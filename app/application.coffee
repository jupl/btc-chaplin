defaultOptions =
  routes: require('routes')
  controllerSuffix: ''

module.exports = class Application extends Chaplin.Application

  constructor: (options) ->
    super Backbone.utils.extend({}, defaultOptions, options)
