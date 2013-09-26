var setup = require('./.setup');

exports.config = setup({
  files: {
    javascripts: {
      joinTo: {
        'javascripts/app.js': /^app/,
        'javascripts/vendor.js': /^(vendor|bower_components)/
      }
    },

    stylesheets: {
      joinTo: {
        'stylesheets/app.css': /^(app|vendor|bower_components)/
      },
      order: {
        before: ['vendor/styles/bootstrap/normalize.less']
      }
    },

    templates: {
      joinTo: 'javascripts/app.js'
    }
  }
});