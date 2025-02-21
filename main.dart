import 'dart:async';
import 'dart:io';

import 'package:cron/cron.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:sse/server/sse_handler.dart';

final Set<SseConnection> activeConnections = {};

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  final cron = Cron();

  // Create SSE handler
  var sseHandler = SseHandler(Uri.parse('/sseHandler'));
  var connections = sseHandler.connections;

  final cascade = Cascade()
      .add(createStaticFileHandler())
      .add(handler)
      .add(fromShelfHandler(sseHandler.handler));

  cron.schedule(Schedule.parse('*/5 * * * * *'), () async {
    print('every 5 seconds');

    for (var connection in activeConnections) {
      connection.sink.add('Server Event at ${DateTime.now()}');
    }
  });

  unawaited(_handleSseConnections(connections.rest));

  return serve(cascade.handler, ip, port);
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
