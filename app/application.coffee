defaultOptions =
  routes: require 'routes'
  controllerSuffix: ''

module.exports = class Application extends Chaplin.Application

  constructor: (options) ->
    super _.extend({}, defaultOptions, options)