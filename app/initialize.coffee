# Initialize the application on DOM ready event.
initialize = ->

  # Add FastClick if available
  new FastClick?(document.body)

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
        obj.get(keypath)
      publish: (obj, keypath, value) ->
        obj.set(keypath, value)

  # Start application
  Application = require('application')
  new Application(pushState: off)

if cordova?
  document.addEventListener 'deviceready', initialize, false
else
  $(document).ready(initialize)
