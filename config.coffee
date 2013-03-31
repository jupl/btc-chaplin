exports.config =

  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
      order:
        before: [
          'vendor/scripts/common/console-polyfill.js'
          'vendor/scripts/common/jquery.js'
          'vendor/scripts/underscore/underscore.js'
          'vendor/scripts/backbone/backbone.js'
          'vendor/scripts/bootstrap/bootstrap-tooltip.js'
        ]
        after: ['vendor/scripts/backbone/chaplin.js']

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|vendor)/
      order:
        before: ['vendor/styles/bootstrap/bootstrap.less']
        after: ['vendor/styles/bootstrap/responsive.less']

    templates:
      joinTo: 'javascripts/app.js'