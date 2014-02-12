'use strict'

###*
 * Set up Prerender if it is available and connect to the application.
 * @param {Express} app Express application to add Passport to.
###
module.exports = (app) ->
  # Check if Prerender is available
  try
    middleware = require('prerender-node')
  catch
    return

  # Set up Prerender middleware and link to server
  prerenderUrl = 'http://127.0.0.1:3000'
  middleware.set('prerenderServiceUrl', prerenderUrl)
  app.use(middleware)
