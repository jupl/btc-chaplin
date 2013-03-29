# Initialize the application on DOM ready event.
initialize = ->

  # Mix in underscore.string into underscore
  _.mixin _.str.exports()

  # Start app
  App = require 'app'
  app = new App
  app.initialize()

$ initialize