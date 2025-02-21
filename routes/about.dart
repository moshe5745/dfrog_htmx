import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:dfrog_htmx/components/table/table.dart';
import 'package:dfrog_htmx/components/table/user_location_cell.dart';
import 'package:dfrog_htmx/components/table/user_name_cell.dart';
import 'package:dfrog_htmx/models/random_user_response.dart';
import 'package:http/http.dart' as http;

Future<Response> onRequest(RequestContext context) async {
  final res = await http.get(Uri.parse('https://randomuser.me/api/?results=10'));
  final randomUser = RandomUserResponse.fromJson(jsonDecode(res.body));

  final List<List<BaseCell>> rows = switch (res.statusCode) {
    200 => randomUser.results.map((user) {
        return [
          UserNameCell(
            userName: '${user.name.first} ${user.name.last}',
            imageSrc: user.picture.thumbnail,
            gender: user.gender,
            imageAlt: '',
          ),
          UserLocationCell(
            country: user.location.country,
            city: user.location.city,
            postcode: user.location.postcode,
          )
        ];
      }).toList(),
    _ => []
  };

  final tableData =
      TableData(titles: rows[0].map((e) => e.title).toList(), rows: rows);

  return Response(
    body: Table(tableData).toString(),
    headers: {'Content-Type': 'text/html'},
  );
}
