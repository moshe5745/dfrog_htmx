# dfrog_htmx

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)

An example application built with dart_frog

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis

#### Start dev server
dart_frog dev
#### Start template generation
dart run build_runner watch --delete-conflicting-outputs
#### Start tailwind generation
./tailwindcss -i css/input.css -o public/output.css --watch
#### Start browser sync
browser-sync start --proxy "http://localhost:8080" --files "public/output.css, routes/**/*.dart, lib/**/*.g.dart" --reload-delay 1000