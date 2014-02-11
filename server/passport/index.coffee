'use strict'

###*
 * Set up Passport if it is available and connect to the application. Passport
 * will use the user model.
 * @param {Express} app Express application to add Passport to.
###
module.exports = (app) ->
  # Check if Passport is available
  try
    passport = require('passport')
  catch
    return

  # Get user model and Passport strategies
  User = require('../models/user')
  strategies = [
    require('./local')
  ]

  # Hook in with user model
  passport.serializeUser (user, done) ->
    done(null, user.id)
  passport.deserializeUser (id, done) ->
    User.findById(id, '-password').exec(done)

  # Add any strategies required
  strategies.forEach (strategy) ->
    passport.use(strategy)

  # Connect middleware
  app.use(passport.initialize())
  app.use(passport.session())
