import 'package:html_template/html_template.dart';

part "bars_2.g.dart";

@template
void _iconBars2([int size = 6, String? color]) {
  '''
    <div class="[&>svg]:size-${size} ${color}">
      <svg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke-width='1.5' stroke='currentColor' class='size-6'><path stroke-linecap='round' stroke-linejoin='round' d='M3.75 9h16.5m-16.5 6.75h16.5' /></svg>
    </div>
  ''';
}