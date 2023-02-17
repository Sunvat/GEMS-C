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
        'Dorange': '#fef0c2',
        'Lorange': '#000000',
        'Lgreen': '#9DC88D',
        'Mgreen':'#4D774E',
        'grey': '#36454F',
        'gold':'#F1B24A',
        'emred':'#e61212',
      },
      backgroundImage: {
        'background1': "url('https://images.pexels.com/photos/162540/career-firefighter-relaxing-job-162540.jpeg?auto=compress&cs=tinysrgb&w=600')",
        'background2': "url('https://images.pexels.com/photos/4558372/pexels-photo-4558372.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')",
        'gemslogo' : "url('https://www.go2hr.ca/wp-content/uploads/2022/04/Glohaven-Community-Hub_Vernon-logo-1.png')"
      }
    },
    fontFamily: {
      'sans': ['ui-sans-serif', 'system-ui'], 'serif': ['Georgia', 'Cambria'],
  },
  plugins: [],
}
}
