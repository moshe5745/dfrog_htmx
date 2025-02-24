import 'package:dfrog_htmx/icons/bars_4.dart';
import 'package:dfrog_htmx/icons/globe.dart';
import 'package:dfrog_htmx/icons/home.dart';
import 'package:dfrog_htmx/components/menu_list.dart';
import 'package:html_template/html_template.dart';

part 'navbar.g.dart';

@template
void _navbar(TrustedHtml content) {
  var menu = menuList([
    (title: "Home", icon: iconHome(), url: "/"),
    (title: "About", icon: iconGlobe(), url: "/table"),
  ]);

  '''
 <div class="drawer">
  <input id="my-drawer-3" type="checkbox" class="drawer-toggle" />
  <div class="drawer-content flex flex-col">
    <!-- Navbar -->
    <div class="navbar bg-base-300 w-full">
      <div class="flex-none lg:hidden">
        <label for="my-drawer-3" aria-label="open sidebar" class="btn btn-square btn-ghost">
          ${iconBars4()}
        </label>
      </div>
      <div class="mx-2 flex-1 px-2">Navbar Title</div>
      <div class="hidden flex-none lg:block">
        <ul class="menu menu-horizontal">
          <!-- Navbar menu content here -->
          ${menu}
        </ul>
      </div>
    </div>
    <!-- Page content here -->
    ${content}
  </div>
  <div class="drawer-side">
    <label for="my-drawer-3" aria-label="close sidebar" class="drawer-overlay"></label>
    <ul class="menu bg-base-200 min-h-full w-80 p-4">
      <!-- Sidebar content here -->
      ${menu}
    </ul>
  </div>
</div>
  ''';
}

