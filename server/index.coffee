'use strict'

express = require('express')
http = require('http')
path = require('path')
setupPassport = require('./passport')
setupPrerender = require('./prerender')
setupRoutes = require('./routes')
setupSession = require('./session')

exports.startServer = (port, publicPath, callback) ->
  app = express()

  # Add middleware
  app.use(express.compress())
  setupPrerender(app)
  app.use(express.static(publicPath))
  app.use(express.json())
  app.use(express.urlencoded())
  app.use(express.cookieParser())
  setupSession(app)
  setupPassport(app)
  setupRoutes(app)

  # Set other paths to index.html for HTML5 pushState apps
  indexPath = path.resolve(publicPath, 'index.html')
  app.get '*', (request, response) ->
    response.sendfile(indexPath)

  # Start up server
  server = http.createServer(app)
  server.listen(port, callback)
  server
