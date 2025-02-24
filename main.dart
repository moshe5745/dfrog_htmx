import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cron/cron.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dfrog_htmx/models/random_user_response.dart';
import 'package:http/http.dart' as http;
import 'package:sse/server/sse_handler.dart';

final Set<SseConnection> activeConnections = {};
List<User> randomUsers = [];

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  randomUsers = await fetchRandomUsers();

  final cron = Cron();

  // Create SSE handler
  var sseHandler = SseHandler(Uri.parse('/sseHandler'));
  var connections = sseHandler.connections;

  final cascade = Cascade()
      .add(createStaticFileHandler())
      .add(handler)
      .add(fromShelfHandler(sseHandler.handler));

  cron.schedule(Schedule.parse('*/5 * * * *'), () async {
    randomUsers = await fetchRandomUsers();
    for (var connection in activeConnections) {
      connection.sink.add('Server Event at ${DateTime.now()}');
    }
  });

  unawaited(_handleSseConnections(connections.rest));

  return serve(cascade.handler, ip, port);
}

Future<List<User>> fetchRandomUsers() async {
  print("Fetching random users...");
  final res =
      await http.get(Uri.parse('https://randomuser.me/api/?results=10'));

  final randomUsersRes = switch (res.statusCode) {
    200 => RandomUserResponse.fromJson(jsonDecode(res.body)),
    _ => null
  };

  return randomUsersRes?.results ?? [];
}

// Handles incoming SSE connections
Future<void> _handleSseConnections(Stream<SseConnection> connections) async {
  await for (var connection in connections) {
    activeConnections.add(connection);
    connection.sink.add('Connected to SSE');

    // Remove connection when it closes
    connection.stream.listen(
      (data) => print('Client sent: $data'),
      onDone: () {
        activeConnections.remove(connection);
        print('Connection closed');
      },
    );
  }
}
