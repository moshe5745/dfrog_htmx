# SSR-Interactivity

### An example application built with dart_frog to show that client interactivity can be easily obtained with SSR rendering strategy.
### This approach obscures all the complexities coming with SPA strategy (React, Angular, etc.)


#### Start dev server (dart_frog)
dart_frog dev
#### Start template generation (html_template)
dart run build_runner watch --delete-conflicting-outputs
#### Start tailwind generation (Tailwind + Daisy)
./tailwindcss -i css/input.css -o public/output.css --watch
#### Start browser sync (Refresh browser on hot reload)
browser-sync start --proxy "http://localhost:8080" --files "public/output.css, routes/**/*.dart, lib/**/*.g.dart" --reload-delay 1000