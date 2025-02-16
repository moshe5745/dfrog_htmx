import 'package:dfrog_htmx/components/table/table.dart';
import 'package:html_template/html_template.dart';

part 'user_col.g.dart';

class UserColData extends BaseColumn {
  UserColData.fromJson(Map<String, dynamic> json, super.title)
      : userName = "${json['name']['first']} ${json['name']['last']}",
        location = '${json['location']['name']}',
        imageSrc = json['picture']['medium'] as String,
        imageAlt = '';

  UserColData(
    super.titleKey, {
    required this.userName,
    required this.location,
    required this.imageSrc,
    this.imageAlt,
  });

  final String userName;
  final String location;
  final String imageSrc;
  final String? imageAlt;

  TrustedHtml toHtml() {
    return UserCol(this);
  }
}

@template
void _UserCol(UserColData user) {
  '''
<div class="flex items-center gap-3">
  <div class="avatar">
    <div class="mask mask-squircle h-12 w-12">
      <img
        src="${user.imageSrc}"
        alt="${user.imageAlt}" />
    </div>
  </div>
  <div>
    <div class="font-bold">${user.userName}</div>
    <div class="text-sm opacity-50">${user.location}</div>
  </div>
</div>
''';
}
