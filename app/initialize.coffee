# Initialize the application on DOM ready event.
initialize = ->

  # Mix in underscore.string into underscore
  _.mixin _.str.exports()

  # Start application
  Application = require('application')
  new Application

$(document).ready(initialize)