middleware = require('prerender-node')
spawn = require('child_process').spawn
prerenderUrl = 'http://127.0.0.1:' + (process.env.PORT or 3000)

module.exports = (app) ->
  # Start up prerender server
  child = spawn('node', ['server/prerender/server.js'], stdio: 'inherit')
  process.on 'exit', ->
    child.kill()

  # Set up prerender middleware and link to server
  middleware.set('prerenderServiceUrl', prerenderUrl)
  app.use(middleware)
