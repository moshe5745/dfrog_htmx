# SSR-Interactivity

### An example application built with dart_frog to show that client interactivity can be easily obtained with SSR rendering strategy.
### This approach obscures all the complexities coming with SPA strategy (React, Angular, etc.)

## Dev

#### Start dev server (dart_frog)
dart_frog dev
#### Start template generation (html_template)
dart run build_runner watch --delete-conflicting-outputs
#### Start tailwind generation (Tailwind + Daisy)
./tailwindcss -i css/input.css -o public/output.css --watch
#### Start browser sync (Refresh browser on hot reload)
browser-sync start --proxy "http://localhost:8080" --files "public/output.css, routes/**/*.dart, lib/**/*.g.dart" --reload-delay 1000

## Bricks

I am using mason to make the dev faster
There are 2 bricks in this projects:

1) Component - Basic component
2) Icon - (You can take icons from https://heroicons.com/ or similar and add them. Make sure the svg content is one line, starting and ending with double quote, and all others are single quote)  