import 'package:dart_frog/dart_frog.dart';
import 'package:dfrog_htmx/base_layout.dart';
import 'package:dfrog_htmx/navbar.dart';


Response onRequest(RequestContext context) {
  return Response(
    body: baseLayout(navbar()).toString(),
    headers: {'Content-Type': 'text/html'},
  );
}
