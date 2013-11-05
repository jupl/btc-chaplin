# Initialize the application on DOM ready event.
initialize = ->

  # Add Davy promises if available and we are using Exoskeleton
  if Backbone.Deferred and Davy? then Backbone.Deferred = -> new Davy

  # Set up Rivets if available
  rivets?.adapters[':'] =
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
  new Application

document.addEventListener('DOMContentLoaded', initialize)
