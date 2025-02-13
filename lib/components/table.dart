import 'package:html_template/html_template.dart';

part 'table.g.dart';

class BaseColumn {
  BaseColumn(this.title);

  final String title;
}

class ColString extends BaseColumn {
  ColString(super.title, this.text);

  final String text;
}

class ColUser extends BaseColumn {
  ColUser(super.title,
      {required this.userName,
      required this.location,
      required this.imageSrc,
      required this.imageAlt});

  final String userName;
  final String location;
  final String imageSrc;
  final String imageAlt;
}

class ColTitle extends BaseColumn {
  ColTitle(super.title, {required this.text, required this.subText});

  final String text;
  final String subText;
}

class ColAction extends BaseColumn {
  ColAction(super.title, {required this.text, required this.action});

  final String text;
  final Function action;
}

@template
void _Table(List<BaseColumn> cols) {
  final colData = <TrustedHtml>[];
  for (final col in cols) {
    final data = switch (col) {
      final ColString col => '''
        ${col.text}
      ''',
      final ColTitle col => '''
        ${col.text}
          <br />
          <span class="badge badge-ghost badge-sm">${col.subText}</span>
      ''',
      final ColUser colUser => '''
          <div class="flex items-center gap-3">
            <div class="avatar">
              <div class="mask mask-squircle h-12 w-12">
                <img
                  src="${colUser.imageSrc}"
                  alt="${colUser.imageAlt}" />
              </div>
            </div>
            <div>
              <div class="font-bold">${colUser.userName}</div>
              <div class="text-sm opacity-50">${colUser.location}</div>
            </div>
          </div>
      ''',
      final ColAction colAction => '''
       <th>
          <button class="btn btn-ghost btn-xs">${colAction.text}</button>
        </th>
    ''',
      _ => ''
    };
    colData.add(TrustedHtml(data));
  }

  BaseColumn? column;
  String? data;
  '''
  <div class="overflow-x-auto">
  <table class="table">
    <!-- head -->
    <thead>
      <tr>
        <th>
          <label>
            <input type="checkbox" class="checkbox" />
          </label>
        </th>
        <th *for="${column!} in $cols">${column.title}</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>
          <label>
            <input type="checkbox" class="checkbox" />
          </label>
        </th>
        <td *for="${data} in $colData">
          ${data}
         </td>
      </tr>
    </tbody>
    <!-- foot -->
    <tfoot>
      <tr>
        <th></th>
        <th *for="${column} in $cols">${column.title}</th>
        <th></th>
      </tr>
    </tfoot>
  </table>
</div>
  ''';
}
