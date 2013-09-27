Collection = require('base/collection')

# Initialize the application on DOM ready event.
initialize = ->

  # Mix in underscore.string into underscore if it exists
  if _.str then _.mixin _.str.exports()

  # Set up Rivets if available
  rivets?.configure
    adapter:
      subscribe: (obj, keypath, callback) ->
        obj.on("change:#{keypath}", callback)
      unsubscribe: (obj, keypath, callback) ->
        obj.off("change:#{keypath}", callback)
      read: (obj, keypath) ->
        if obj instanceof Collection then obj.models else obj.get(keypath)
      publish: (obj, keypath, value) ->
        obj.set(keypath, value)

  # Start application
  Application = require('application')
  new Application

$(document).ready(initialize)