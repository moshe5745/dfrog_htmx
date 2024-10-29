/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./{lib,web}/**/*.dart'],
  theme: {
    extend: {},
  },
  plugins: [require("./assets/daisyui")],
}

