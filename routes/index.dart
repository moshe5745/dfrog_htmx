import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  return Response(
    body: '''
 
<div x-data="{}">
      <ul x-sort>
    <li x-sort:item>foo</li>
    <li x-sort:item>bar</li>
    <li x-sort:item>baz</li>
</ul>
</div>
    ''',
    headers: {'Content-Type': 'text/html'},
  );
}
