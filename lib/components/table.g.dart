// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// **************************************************************************
// TemplateGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore
// ignore_for_file: unused_local_variable
// ignore_for_file: unnecessary_string_interpolations
@GenerateFor(_Table)
TrustedHtml Table(List<BaseColumn> cols) {
  var $ = StringBuffer();

  final colData = <TrustedHtml>[];
  for (final col in cols) {
    final data = switch (col) {
      final ColString col => '''
        ${col.text}
      ''',
      final ColTitle col => '''
        ${col.text}
          <br />
          <span class="badge badge-ghost badge-sm">${col.subText}</span>
      ''',
      final ColUser colUser => '''
          <div class="flex items-center gap-3">
            <div class="avatar">
              <div class="mask mask-squircle h-12 w-12">
                <img
                  src="${colUser.imageSrc}"
                  alt="${colUser.imageAlt}" />
              </div>
            </div>
            <div>
              <div class="font-bold">${colUser.userName}</div>
              <div class="text-sm opacity-50">${colUser.location}</div>
            </div>
          </div>
      ''',
      final ColAction colAction => '''
       <th>
          <button class="btn btn-ghost btn-xs">${colAction.text}</button>
        </th>
    ''',
      _ => ''
    };
    colData.add(TrustedHtml(data));
  }
  BaseColumn? column;
  String? data;
  $.write('  ');
  $.write('<div class="overflow-x-auto">');
  $.write('\n  ');
  $.write('<table class="table">');
  $.write('\n    ');
  $.writeln('''<!--  head  -->''');
  $.write('\n    ');
  $.write('<thead>');
  $.write('\n      ');
  $.write('<tr>');
  $.write('\n        ');
  $.write('<th>');
  $.write('\n          ');
  $.write('<label>');
  $.write('\n            ');
  $.write('<input type="checkbox" class="checkbox">');
  $.write('\n          ');
  $.write('</label>');
  $.write('\n        ');
  $.write('</th>');
  $.write('\n        ');
  for (var column in template.nonNullIterable(cols)) {
    $.write('<th>');
    $.write('${TrustedHtml.escape(column.title)}');
    $.write('</th>');
  }
  $.write('\n      ');
  $.write('</tr>');
  $.write('\n    ');
  $.write('</thead>');
  $.write('\n    ');
  $.write('<tbody>');
  $.write('\n      ');
  $.write('<tr>');
  $.write('\n        ');
  $.write('<th>');
  $.write('\n          ');
  $.write('<label>');
  $.write('\n            ');
  $.write('<input type="checkbox" class="checkbox">');
  $.write('\n          ');
  $.write('</label>');
  $.write('\n        ');
  $.write('</th>');
  $.write('\n        ');
  for (var data in template.nonNullIterable(colData)) {
    $.write('<td>');
    $.write('''
          ${TrustedHtml.escape(data)}
         ''');
    $.write('</td>');
  }
  $.write('\n      ');
  $.write('</tr>');
  $.write('\n    ');
  $.write('</tbody>');
  $.write('\n    ');
  $.writeln('''<!--  foot  -->''');
  $.write('\n    ');
  $.write('<tfoot>');
  $.write('\n      ');
  $.write('<tr>');
  $.write('\n        ');
  $.write('<th>');
  $.write('</th>');
  $.write('\n        ');
  for (var column in template.nonNullIterable(cols)) {
    $.write('<th>');
    $.write('${TrustedHtml.escape(column.title)}');
    $.write('</th>');
  }
  $.write('\n        ');
  $.write('<th>');
  $.write('</th>');
  $.write('\n      ');
  $.write('</tr>');
  $.write('\n    ');
  $.write('</tfoot>');
  $.write('\n  ');
  $.write('</table>');
  $.write('\n');
  $.write('</div>');
  $.write('\n  ');

  return TrustedHtml($.toString());
}
