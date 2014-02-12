'use strict'

express = require('express')
config = require('./config')

module.exports = (app) ->
  # Check if Connect Mongo is available
  try
    MongoStore = require('connect-mongo')(express)
  catch
    return

  # Set up sessions with MongoDB
  app.use express.session
    secret: config.session.secret
    store: new MongoStore(url: config.session.mongoUri)
