// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_list.dart';

// **************************************************************************
// TemplateGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore
// ignore_for_file: unused_local_variable
// ignore_for_file: unnecessary_string_interpolations
@GenerateFor(_menuList)
TrustedHtml menuList(List<MenuItem> menu) {
  var $ = StringBuffer();

  MenuItem? item;
  $.write('    ');
  for (var item in template.nonNullIterable(menu)) {
    $.write('<li>');
    $.write('\n      ');
    $.write('<a href="${TrustedHtml.escape.attribute(item.url)}">');
    $.write(
        '${TrustedHtml.escape(item.icon)} ${TrustedHtml.escape(item.title)}');
    $.write('</a>');
    $.write('\n    ');
    $.write('</li>');
  }
  $.write('\n  ');

  return TrustedHtml($.toString());
}
