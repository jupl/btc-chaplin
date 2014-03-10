'use strict'

express = require('express')
MongoStore = require('connect-mongo')(express)
config = require('./config')

module.exports = (app) ->
  # Set up sessions with MongoDB
  app.use express.session
    secret: config.session.secret
    store: new MongoStore(url: config.session.mongoUri)
