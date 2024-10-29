#!/bin/bash

# Clear port 8181 if in use
(lsof -t -i tcp:8181 | xargs kill -9 || true)

# Start all processes
dart_frog dev && \
browser-sync start --proxy "http://localhost:8080" --files "public/*.css, routes/**/*.dart, lib/**/*.g.dart" --reload-delay 1000 & \
dart run build_runner watch --delete-conflicting-outputs && \
./tailwindcss -i css/input.css -o public/output.css --watch &
