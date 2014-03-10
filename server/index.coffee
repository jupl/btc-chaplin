'use strict'

express = require('express')
http = require('http')
path = require('path')
setupBrowserSync = require('./browser-sync')

exports.startServer = (port, publicPath, callback) ->
  app = express()
  indexPath = path.join(publicPath, 'index.html')

  # Add middleware
  app.use(express.compress())
  app.use(express.static(publicPath))

  # Set other paths to index.html for HTML5 push state apps
  app.get '*', (request, response) ->
    response.sendfile(indexPath)

  # Start up server (and BrowserSync if specified)
  http.createServer(app).listen port, (err) ->
    callback(arguments...)
    unless err or process.env.browsersync isnt 'true'
      setupBrowserSync(port, publicPath)
