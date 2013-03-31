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

  # Redo wrapper so that tests modules are automatically added.
  modules:
    wrapper: (path, data, isVendor) ->
      if isVendor
        code = "#{data};\n"
      else
        path = path.replace(/\.\w+$/, '').replace(/^app\//, '')
        code = """
        window.require.define({#{JSON.stringify path}: function(exports, require, module) {
          #{data.replace /(\\)?\n(?!\n)/g, ($0, $1) -> if $1 then $0 else '\n  '}
        }});\n\n
        """
        if /^test[\\/]/.test path
          code += "window.require(#{JSON.stringify path});\n\n"
      code