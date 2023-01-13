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
        'Glovhaven-bg': '#fdf4ef',
        'Dgreen': '#164A41',
        'Lgreen': '#9DC88D',
        'Mgreen':'#4D774E',
        'gold':'#F1B24A',
      }
    },
    fontFamily: {
      'sans': ['ui-sans-serif', 'system-ui'],
  },
  plugins: [],
}
}
