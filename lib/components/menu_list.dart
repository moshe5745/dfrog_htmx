import 'package:html_template/html_template.dart';

part 'menu_list.g.dart';

typedef MenuItem = ({String title, String url, TrustedHtml icon});

@template
void _menuList(List<MenuItem> menu) {
  MenuItem? item;

  '''
    <li *for="${item!} in $menu">
      <a href="${item.url}">${item.icon} ${item.title}</a>
    </li>
  ''';
}
