module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],

    theme: {
      extend: {
        animation: {
          rotate: "rotate 10s linear infinite",
        },
        keyframes: {
          rotate: {
            "0%": { transform: "rotate(0deg) scale(10)" },
            "100%": { transform: "rotate(-360deg) scale(10)" },
          },
        },
      },
    },
}