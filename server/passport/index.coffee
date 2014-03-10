'use strict'

passport = require('passport')
User = require('../models/user')
strategies = [
  require('./local')
]

###*
 * Set up Passport and connect to the application. Passport will use the user
 * model.
 * @param {Express} app Express application to add Passport to.
###
module.exports = (app) ->
  # Hook in with user model
  passport.serializeUser ({id}, done) ->
    done(null, id)
  passport.deserializeUser (id, done) ->
    User.findById(id, '-password').exec(done)

  # Add any strategies required
  strategies.forEach (strategy) ->
    passport.use(strategy)

  # Connect middleware
  app.use(passport.initialize())
  app.use(passport.session())
