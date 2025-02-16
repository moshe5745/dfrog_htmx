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

  BaseColumn? col;
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
  for (var col in template.nonNullIterable(cols)) {
    $.write('<th>');
    $.write('${TrustedHtml.escape(col.title)}');
    $.write('</th>');
  }
  $.write('\n      ');
  $.write('</tr>');
  $.write('\n    ');
  $.write('</thead>');
  $.write('\n    ');
  $.write('<tbody>');
  $.write('\n      ');
  for (var col in template.nonNullIterable(cols)) {
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
    $.write('<td>');
    $.write('''
          ${TrustedHtml.escape(col.toHtml())}
         ''');
    $.write('</td>');
    $.write('\n      ');
    $.write('</tr>');
  }
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
  for (var col in template.nonNullIterable(cols)) {
    $.write('<th>');
    $.write('${TrustedHtml.escape(col.title)}');
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
