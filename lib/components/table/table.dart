import 'package:dfrog_htmx/icons/arrows_up_down.dart';
import 'package:html_template/html_template.dart';

part 'table.g.dart';

abstract class BaseCell {
  BaseCell(this.title);

  final String title;

  TrustedHtml toHtml();
}

class TableData {
  TableData({
    required this.titles,
    required this.rows,
  });

  List<String> titles;
  List<List<BaseCell>> rows;
}

@template
void _Table(TableData tableData) {
  var TableData(:rows, :titles) = tableData;

  List<BaseCell>? row;
  BaseCell? cell;
  String? title;

  '''
<div class="overflow-x-auto">
  <table class="table" x-data="{}">
    <thead>
      <tr>
        <th>
          <label>
            <input type="checkbox" class="checkbox" />
          </label>
        </th>
        <th *for="${title!} in $titles">${title}</th>
      </tr>
    </thead>
    <tbody x-sort="() => fetch('/table')">
      <tr *for="${row!} in $rows" x-sort:item>
        <th>
          <label>
            <input type="checkbox" class="checkbox" />
          </label>
        </th>
        <td *for="${cell!} in $row">
          ${cell.toHtml()}
         </td>
         <th>
         <label x-sort:handle>
          ${iconArrowsUpDown()}
         </label>
         </th>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <th></th>
        <th *for="${title} in $titles">${title}</th>
        <th></th>
      </tr>
    </tfoot>
  </table>
</div>
  ''';
}
