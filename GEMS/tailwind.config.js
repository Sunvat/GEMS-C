/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [ 
    "./resources/**/*.blade.php",
  "./resources/**/*.js",
  "./resources/**/*.vue",
],
  theme: {
    extend: {
      colors: {
        'Glohaven-Orange': '#EC925D',
        'Glohaven-Hovered': '#c97b4f',
        'Glovhaven-bg': '#fdf4ef'
      }
    },
  },
  plugins: [],
}
