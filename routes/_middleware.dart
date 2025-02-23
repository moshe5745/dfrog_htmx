import 'package:dart_frog/dart_frog.dart';
import 'package:dfrog_htmx/components/navbar.dart';
import 'package:html_template/html_template.dart';

Handler middleware(Handler handler) {
  return (context) async {
    final isHtmxRequest = context.request.headers['HX-Request'] == 'true';

    final response = await handler(context);

    if (isHtmxRequest) return response;

    final body = '''
        <!DOCTYPE html>
        <html>
          <head>
            <title>Your Page Title</title>
            <link href="./output.css" rel="stylesheet">
            <script defer src="https://cdn.jsdelivr.net/npm/@alpinejs/sort@3.x.x/dist/cdn.min.js"></script>
            <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
            <script src="./sse.js"></script>
          </head>
          <body>
            ${navbar(TrustedHtml(await response.body()))}
          </body>
        </html>
      ''';

    return Response(
      body: body,
      headers: {...response.headers, 'content-type': 'text/html'},
      statusCode: response.statusCode,
    );
  };
}
