'use strict'

express = require('express')
http = require('http')
path = require('path')
setupBrowserSync = require('./browser-sync')
setupPassport = require('./passport')
setupPrerender = require('./prerender')
setupRoutes = require('./routes')
setupSession = require('./session')

exports.startServer = (port, publicPath, callback) ->
  app = express()
  indexPath = path.join(publicPath, 'index.html')

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

  # Set other paths to index.html for HTML5 push state apps
  app.get '*', (request, response) ->
    response.sendfile(indexPath)

  # Start up server (and BrowserSync if specified)
  http.createServer(app).listen port, (err) ->
    callback(arguments...)
    unless err or process.env.browsersync isnt 'true'
      setupBrowserSync(port, publicPath)
