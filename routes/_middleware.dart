import 'package:dart_frog/dart_frog.dart';
import 'package:dfrog_htmx/base_layout.dart';

Handler middleware(Handler handler) {
  return (context) async {
    // Execute code before request is handled.

    final isHtmxRequest = context.request.headers['HX-Request'] == 'true';

    // Forward the request to the respective handler.
    final response = await handler(context);

    // Execute code after request is handled.

    // Return a response.
    return isHtmxRequest ? response : Response(body: await response.body(), headers: response.headers, statusCode: response.statusCode);
  };
}