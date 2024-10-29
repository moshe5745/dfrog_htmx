import 'package:html_template/html_template.dart';

part 'menu_list.g.dart';

typedef MenuItem = ({String title, String url, String icon});

@template
void _menuList(List<MenuItem> menu) {
  MenuItem? item;

  '''
    <li *for="${item!} in $menu">
      <a>${item.title}</a>
    </li>
  ''';
}
