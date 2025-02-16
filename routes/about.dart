import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:dfrog_htmx/components/table/table.dart';
import 'package:dfrog_htmx/components/table/user_col.dart';
import 'package:http/http.dart' as http;

Future<Response> onRequest(RequestContext context) async {
  var res = await http.get(Uri.parse('https://randomuser.me/api/?results=2'));

  print(res);
  final parsedJson = (jsonDecode(res.body) as Map<String, dynamic>)['results']
      as List<dynamic>;

  final List<BaseColumn> data = switch (res.statusCode) {
    200 => parsedJson
        .map((e) => UserColData.fromJson(e as Map<String, dynamic>, "User"))
        .toList(),
    _ => []
  };

  return Response(
    body: Table(data).toString(),
    headers: {'Content-Type': 'text/html'},
  );
}
