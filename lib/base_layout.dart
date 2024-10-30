import 'package:html_template/html_template.dart';

part 'base_layout.g.dart';

@template
void _baseLayout(TrustedHtml content) {
  '''<html lang="">
<head>
    <title>HTMX</title>
    <link href="./static/output.css" rel="stylesheet">
</head>
<body>
${content}  
</body>
</html>
  ''';
}
