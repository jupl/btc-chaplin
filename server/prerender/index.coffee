{fork} = require('child_process')
prerenderUrl = 'http://127.0.0.1:' + (process.env.PORT or 3000)

module.exports = (app) ->
  # Check if Prerender is available
  try
    require.resolve('prerender')
    require.resolve('prerender-node')
  catch
    return

  # Start up prerender server
  child = fork('server/prerender/server')
  process.on 'exit', ->
    child.kill()

  # Set up Prerender middleware and link to server
  middleware = require('prerender-node')
  middleware.set('prerenderServiceUrl', prerenderUrl)
  app.use(middleware)
