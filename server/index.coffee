'use strict'

express = require('express')
http = require('http')
path = require('path')

exports.startServer = (port, publicPath, callback) ->
  app = express()

  # Add middleware
  app.use(express.compress())
  app.use(express.static(publicPath))

  # Start up server
  server = http.createServer(app)
  server.listen(port, callback)
  server
