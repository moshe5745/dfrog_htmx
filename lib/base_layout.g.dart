// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_layout.dart';

// **************************************************************************
// TemplateGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore
// ignore_for_file: unused_local_variable
// ignore_for_file: unnecessary_string_interpolations
@GenerateFor(_baseLayout)
TrustedHtml baseLayout(TrustedHtml content) {
  var $ = StringBuffer();

  $.write('<html lang="">');
  $.write('<head>');
  $.write('\n    ');
  $.write('<title>');
  $.write('HTMX');
  $.write('</title>');
  $.write('\n    ');
  $.write('<link href="./output.css" rel="stylesheet">');
  $.write('\n');
  $.write('</head>');
  $.write('\n');
  $.write('<body>');
  $.write('''
${TrustedHtml.escape(content)}  


  ''');
  $.write('</body>');
  $.write('</html>');

  return TrustedHtml($.toString());
}
