import 'package:html_template/html_template.dart';

part "{{name.snakeCase()}}.g.dart";

@template
void _icon{{name.pascalCase()}}([int size = 6, String? color]) {
  '''
    <div class="[&>svg]:size-${size} ${color}">
      {{{svg}}}
    </div>
  ''';
}