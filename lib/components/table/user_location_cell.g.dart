// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location_cell.dart';

// **************************************************************************
// TemplateGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore
// ignore_for_file: unused_local_variable
// ignore_for_file: unnecessary_string_interpolations
@GenerateFor(_UserLocationCellTemplate)
TrustedHtml UserLocationCellTemplate(UserLocationCell data) {
  var $ = StringBuffer();

  var UserLocationCell(:country, :city, :postcode) = data;
  $.write('''${TrustedHtml.escape(country)} - ${TrustedHtml.escape(city)}
''');
  $.write('<br>');
  $.write('\n');
  $.write('<span class="badge badge-ghost badge-sm">');
  $.write('${TrustedHtml.escape(postcode)}');
  $.write('</span>');
  $.write('\n');

  return TrustedHtml($.toString());
}
