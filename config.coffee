exports.config =

  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^(vendor|bower_components)/

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|vendor|bower_components)/
      order:
        before: ['vendor/styles/bootstrap/bootstrap.less']
        after: ['vendor/styles/bootstrap/responsive.less']

    templates:
      joinTo: 'javascripts/app.js'
