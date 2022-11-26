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
        'Cedar': 'BA5B4F',
        'Apricot': 'FFD8BE',
        'MBG':'7FD1B9',
        'Chared':'2E4052',
        'Bdazzled':'3D5A80'
      }
    },
  },
  plugins: [],
}
