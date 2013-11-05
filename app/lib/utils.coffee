# Application-specific utilities
# ------------------------------

# Delegate to Chaplin’s utils module
utils = Chaplin.utils.beget Chaplin.utils

utils.extend = if _? then _.extend else Backbone.utils.extend

# utils.extend utils,
#   someMethod: ->

module.exports = utils
