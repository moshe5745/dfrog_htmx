// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_col.dart';

// **************************************************************************
// TemplateGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore
// ignore_for_file: unused_local_variable
// ignore_for_file: unnecessary_string_interpolations
@GenerateFor(_UserCol)
TrustedHtml UserCol(UserColData user) {
  var $ = StringBuffer();

  $.write('<div class="flex items-center gap-3">');
  $.write('\n  ');
  $.write('<div class="avatar">');
  $.write('\n    ');
  $.write('<div class="mask mask-squircle h-12 w-12">');
  $.write('\n      ');
  $.write(
      '<img src="${TrustedHtml.escape.attribute(user.imageSrc)}" alt="${TrustedHtml.escape.attribute(user.imageAlt)}">');
  $.write('\n    ');
  $.write('</div>');
  $.write('\n  ');
  $.write('</div>');
  $.write('\n  ');
  $.write('<div>');
  $.write('\n    ');
  $.write('<div class="font-bold">');
  $.write('${TrustedHtml.escape(user.userName)}');
  $.write('</div>');
  $.write('\n    ');
  $.write('<div class="text-sm opacity-50">');
  $.write('${TrustedHtml.escape(user.location)}');
  $.write('</div>');
  $.write('\n  ');
  $.write('</div>');
  $.write('\n');
  $.write('</div>');
  $.write('\n');

  return TrustedHtml($.toString());
}
