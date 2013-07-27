exports.config =

  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^(bower_components|vendor)/
        'test/tests.js': /^test/
      order:
        before: [
          'vendor/scripts/common/console-polyfill.js'
          'vendor/scripts/common/jquery.js'
          'vendor/scripts/underscore/lodash.js'
          'vendor/scripts/backbone/backbone.js'
          'vendor/scripts/bootstrap/bootstrap-tooltip.js'
        ]
        after: [
          'test/tests/loader.coffee'
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': /(?!test)/
        'test/tests.css': /(?!test)/
      order:
        before: ['vendor/styles/bootstrap/bootstrap.less']
        after: ['vendor/styles/bootstrap/responsive.less']

    templates:
      joinTo: 'javascripts/app.js'
