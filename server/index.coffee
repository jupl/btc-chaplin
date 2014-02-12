'use strict'

express = require('express')
http = require('http')
path = require('path')

exports.startServer = (port, publicPath, callback) ->
  app = express()

  # Add middleware
  app.use(express.compress())
  app.use(express.static(publicPath))

  # Set other paths to index.html for HTML5 pushState apps
  # indexPath = path.resolve(publicPath, 'index.html')
  # app.get '*', (request, response) ->
  #   response.sendfile(indexPath)

  # Start up server
  server = http.createServer(app)
  server.listen(port, callback)
  server
