import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  final cascade = Cascade().add(createStaticFileHandler()).add(handler);
  return serve(cascade.handler, ip, port);
}
