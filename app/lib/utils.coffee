# Application-specific utilities
# ------------------------------

# Delegate to Chaplin’s utils module
utils = Chaplin.utils.beget(Chaplin.utils)

# Add extend so no need to worry if using Backbone or Exoskeleton
utils.extend = if _? then _.extend else Backbone.utils.extend

# utils.extend utils,
#   someMethod: ->

# Prevent creating new properties and stuff
Object.seal? utils

module.exports = utils
