# dfrog_htmx

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

An example application built with dart_frog

#### Start dev server
dart_frog dev
#### Start template generation
dart run build_runner watch --delete-conflicting-outputs
#### Start tailwind generation
./tailwindcss -i css/input.css -o public/output.css --watch
#### Start browser sync
browser-sync start --proxy "http://localhost:8080" --files "public/output.css, routes/**/*.dart, lib/**/*.g.dart" --reload-delay 1000