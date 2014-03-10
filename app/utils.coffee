'use strict'

# Delegate to Chaplin’s utils module
module.exports = utils = Chaplin.utils.beget(Chaplin.utils)

# Add extend so no need to worry if using Backbone or Exoskeleton
utils.extend = if window._ then _.extend else Backbone.utils.extend

# utils.extend utils,
#  someMethod: ->
