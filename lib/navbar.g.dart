// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navbar.dart';

// **************************************************************************
// TemplateGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore
// ignore_for_file: unused_local_variable
// ignore_for_file: unnecessary_string_interpolations
@GenerateFor(_navbar)
TrustedHtml navbar() {
  var $ = StringBuffer();

  var menu = menuList([
    (title: "Home", icon: iconHome(), url: "/"),
    (title: "About", icon: iconGlobe(), url: "/about")
  ]);
  $.write(' ');
  $.write('<div class="drawer">');
  $.write('\n  ');
  $.write('<input id="my-drawer-3" type="checkbox" class="drawer-toggle">');
  $.write('\n  ');
  $.write('<div class="drawer-content flex flex-col">');
  $.write('\n    ');
  $.writeln('''<!--  Navbar  -->''');
  $.write('\n    ');
  $.write('<div class="navbar bg-base-300 w-full">');
  $.write('\n      ');
  $.write('<div class="flex-none lg:hidden">');
  $.write('\n        ');
  $.write(
      '<label for="my-drawer-3" aria-label="open sidebar" class="btn btn-square btn-ghost">');
  $.write('''
          ${TrustedHtml.escape(iconBars4())}
        ''');
  $.write('</label>');
  $.write('\n      ');
  $.write('</div>');
  $.write('\n      ');
  $.write('<div class="mx-2 flex-1 px-2">');
  $.write('Navbar Title');
  $.write('</div>');
  $.write('\n      ');
  $.write('<div class="hidden flex-none lg:block">');
  $.write('\n        ');
  $.write('<ul class="menu menu-horizontal">');
  $.write('\n          ');
  $.writeln('''<!--  Navbar menu content here  -->''');
  $.write('''
          ${TrustedHtml.escape(menu)}
        ''');
  $.write('</ul>');
  $.write('\n      ');
  $.write('</div>');
  $.write('\n    ');
  $.write('</div>');
  $.write('\n    ');
  $.writeln('''<!--  Page content here  -->''');
  $.write('''
    Content
  ''');
  $.write('</div>');
  $.write('\n  ');
  $.write('<div class="drawer-side">');
  $.write('\n    ');
  $.write(
      '<label for="my-drawer-3" aria-label="close sidebar" class="drawer-overlay">');
  $.write('</label>');
  $.write('\n    ');
  $.write('<ul class="menu bg-base-200 min-h-full w-80 p-4">');
  $.write('\n      ');
  $.writeln('''<!--  Sidebar content here  -->''');
  $.write('''
      ${TrustedHtml.escape(menu)}
    ''');
  $.write('</ul>');
  $.write('\n  ');
  $.write('</div>');
  $.write('\n');
  $.write('</div>');
  $.write('\n  ');

  return TrustedHtml($.toString());
}
