import 'package:dart_frog/dart_frog.dart';
import 'package:dfrog_htmx/components/table.dart';

Response onRequest(RequestContext context) {
  return Response(
    body:
        Table([ColUser("User", userName: 'Moshe Yamini', location: 'Jerusalem, ISR', imageAlt: '', imageSrc: 'https://img.daisyui.com/images/profile/demo/2@94.webp' )]).toString(),
    headers: {'Content-Type': 'text/html'},
  );
}
