var setup = require('./setup');

exports.config = setup({
  files: {
    javascripts: {
      joinTo: {
        'javascripts/app.js': /^app/,
        'javascripts/vendor.js': /^(?!app)/
      }
    },

    stylesheets: {
      joinTo: 'stylesheets/app.css'
    },

    templates: {
      joinTo: 'javascripts/app.js'
    }
  },
  plugins: {
    coffeelint: {
      pattern: /^app\/.*\.coffee$/,
      options: {
        max_line_length: {
          level: "ignore"
        }
      }
    }
  }
});
