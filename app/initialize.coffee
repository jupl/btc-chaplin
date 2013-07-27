routes = require 'routes'

# Initialize the application on DOM ready event.
initialize = ->

  # Mix in underscore.string into underscore
  _.mixin _.str.exports()

  # Start app
  enablePushState = window.location.protocol isnt 'file:'
  App = require 'app'
  app = new App {routes, controllerSuffix: '', pushState: enablePushState}

$ initialize
