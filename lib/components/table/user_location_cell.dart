import 'package:dfrog_htmx/components/table/table.dart';
import 'package:html_template/html_template.dart';

part 'user_location_cell.g.dart';

class UserLocationCell extends BaseCell {
  UserLocationCell(
      {required this.country, required this.city, required this.postcode})
      : super('Location');

  final String country;
  final String city;
  final dynamic postcode;

  @override
  TrustedHtml toHtml() {
    return UserLocationCellTemplate(this);
  }
}

@template
void _UserLocationCellTemplate(UserLocationCell data) {
  var UserLocationCell(:country, :city, :postcode) = data;
  '''
$country - $city
<br />
<span class="badge badge-ghost badge-sm">$postcode</span>
''';
}
