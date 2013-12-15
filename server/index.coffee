express = require('express')
http = require('http')
path = require('path')

exports.startServer = (port, publicPath, callback) ->
  app = express()

  # Point to generated static files
  app.use(express.static(publicPath))

  # Define web services
  # app.use(express.json())
  # app.use(express.urlencoded())
  # app.use(app.router)
  # app.post(...)

  # Set other paths to index.html for HTML5 pushState apps
  indexPath = path.resolve(publicPath, 'index.html')
  app.get '*', (request, response) ->
    response.sendfile(indexPath)

  # Start up server
  server = http.createServer(app)
  server.listen(port, callback)
  server
