exports.config =
  paths:
    public: 'build/web'

  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/tests.js': /^test[\\/]tests/
        'test/javascripts/test-vendor.js': /^test[\\/]vendor/
      order:
        before: [
          'vendor/scripts/common/console-helper.js'
          'vendor/scripts/common/jquery.js'
          'vendor/scripts/common/underscore.js'
          'vendor/scripts/bootstrap/bootstrap-tooltip.js'
          'test/vendor/scripts/modernizr.js'
        ]
        after: ['test/vendor/scripts/test-helper.js']

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app(?![\\/]lib)|vendor)/
        'test/stylesheets/test.css': /^test/
      order:
        before: ['vendor/styles/bootstrap/bootstrap.less']
        after: ['vendor/styles/bootstrap/responsive.less']

    templates:
      joinTo: 'javascripts/app.js'