import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dfrog_htmx/components/table/table.dart';
import 'package:dfrog_htmx/components/table/user_location_cell.dart';
import 'package:dfrog_htmx/components/table/user_name_cell.dart';

import '../main.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _get(context),
    HttpMethod.post => _post(context),
    _ => Response(statusCode: HttpStatus.methodNotAllowed)
  } as Future<Response>;
}

Future<Response> _post(RequestContext context) async {
  final List<List<BaseCell>> rows = randomUsers.map((user) {
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
  }).toList();

  final tableData = TableData(
      titles: rows.firstOrNull?.map((e) => e.title).toList() ?? [], rows: rows);

  return Response(
    body: Table(tableData).toString(),
    headers: {'Content-Type': 'text/html'},
  );
}

Future<Response> _get(RequestContext context) async {
  final List<List<BaseCell>> rows = randomUsers.map((user) {
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
  }).toList();

  final tableData = TableData(
      titles: rows.firstOrNull?.map((e) => e.title).toList() ?? [], rows: rows);

  return Response(
    body: Table(tableData).toString(),
    headers: {'Content-Type': 'text/html'},
  );
}
