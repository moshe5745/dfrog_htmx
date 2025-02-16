import 'package:html_template/html_template.dart';

part 'table.g.dart';

abstract class BaseColumn {
  BaseColumn(this.title);

  final String title;

  TrustedHtml toHtml();
}

@template
void _Table(List<BaseColumn> cols) {
  BaseColumn? col;
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
        <th *for="${col!} in $cols">${col.title}</th>
      </tr>
    </thead>
    <tbody>
      <tr *for="${col} in $cols">
        <th>
          <label>
            <input type="checkbox" class="checkbox" />
          </label>
        </th>
        <td>
          ${col.toHtml()}
         </td>
      </tr>
    </tbody>
    <!-- foot -->
    <tfoot>
      <tr>
        <th></th>
        <th *for="${col} in $cols">${col.title}</th>
        <th></th>
      </tr>
    </tfoot>
  </table>
</div>
  ''';
}
