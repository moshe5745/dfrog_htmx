// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// **************************************************************************
// TemplateGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore
// ignore_for_file: unused_local_variable
// ignore_for_file: unnecessary_string_interpolations
@GenerateFor(_Table)
TrustedHtml Table(TableData tableData) {
  var $ = StringBuffer();

  var TableData(:rows, :titles) = tableData;
  List<BaseCell>? row;
  BaseCell? cell;
  String? title;
  $.write('<div class="overflow-x-auto">');
  $.write('\n  ');
  $.write('<table class="table" x-data="{}">');
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
  for (var title in template.nonNullIterable(titles)) {
    $.write('<th>');
    $.write('${TrustedHtml.escape(title)}');
    $.write('</th>');
  }
  $.write('\n      ');
  $.write('</tr>');
  $.write('\n    ');
  $.write('</thead>');
  $.write('\n    ');
  $.write('<tbody x-sort="">');
  $.write('\n      ');
  for (var row in template.nonNullIterable(rows)) {
    $.write('<tr x-sort:item="">');
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
    for (var cell in template.nonNullIterable(row)) {
      $.write('<td>');
      $.write('''
          ${TrustedHtml.escape(cell.toHtml())}
         ''');
      $.write('</td>');
    }
    $.write('\n         ');
    $.write('<th>');
    $.write('\n         ');
    $.write('<label x-sort:handle="">');
    $.write('''
          ${TrustedHtml.escape(iconArrowsUpDown())}
         ''');
    $.write('</label>');
    $.write('\n         ');
    $.write('</th>');
    $.write('\n      ');
    $.write('</tr>');
  }
  $.write('\n    ');
  $.write('</tbody>');
  $.write('\n    ');
  $.write('<tfoot>');
  $.write('\n      ');
  $.write('<tr>');
  $.write('\n        ');
  $.write('<th>');
  $.write('</th>');
  $.write('\n        ');
  for (var title in template.nonNullIterable(titles)) {
    $.write('<th>');
    $.write('${TrustedHtml.escape(title)}');
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
