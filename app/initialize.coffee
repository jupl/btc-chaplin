'use strict'

initialize = ->

  # Add FastClick if available
  if window.FastClick then FastClick.attach(document.body)

  # Add Davy promises if available and we are using Exoskeleton
  if !Backbone.Deferred and window.Davy
    Backbone.Deferred = -> new Davy

  # Set up Rivets if available
  if window.rivets then rivets.adapters[':'] =
    subscribe: (obj, keypath, callback) ->
      obj.on("change:#{keypath}", callback)
    unsubscribe: (obj, keypath, callback) ->
      obj.off("change:#{keypath}", callback)
    read: (obj, keypath) ->
      obj.get(keypath)
    publish: (obj, keypath, value) ->
      obj.set(keypath, value)

  # Start application
  App = require('app')
  new App(pushState: off)

# Initialize the application on DOM ready event.
# Use jQuery if available. Otherwise use native.
preInitialize = ->
  if window.$
    $(document).ready(initialize)
  else
    document.addEventListener('DOMContentLoaded', initialize);

# Before initializing, check that Cordova is loaded properly
if cordova?
  document.addEventListener('deviceready', preInitialize, false);
else
  preInitialize()
