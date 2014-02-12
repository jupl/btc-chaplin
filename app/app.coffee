'use strict'

routes = require('routes')
utils = require('lib/utils')

defaultOptions = {routes, controllerSuffix: ''}

module.exports = class Application extends Chaplin.Application

  constructor: (options) ->
    super utils.extend({}, defaultOptions, options)
