import 'package:dfrog_htmx/components/table/table.dart';
import 'package:html_template/html_template.dart';

part 'user_name_cell.g.dart';

class UserNameCell extends BaseCell {
  UserNameCell({
    required this.userName,
    required this.gender,
    required this.imageSrc,
    required this.imageAlt,
  }) : super('User');

  final String userName;
  final String gender;
  final String imageSrc;
  final String? imageAlt;

  @override
  TrustedHtml toHtml() => UserNameCellTempl(this);
}

@template
void _UserNameCellTempl(UserNameCell data) {
  var UserNameCell(:imageSrc, :imageAlt, :userName, :gender) = data;

  '''
<div class="flex items-center gap-3">
  <div class="avatar">
    <div class="mask mask-squircle h-12 w-12">
      <img
        src="${imageSrc}"
        alt="${imageAlt}" />
    </div>
  </div>
  <div>
    <div class="font-bold">${userName}</div>
    <div class="text-sm opacity-50">${gender}</div>
  </div>
</div>
''';
}
