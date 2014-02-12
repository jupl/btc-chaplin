'use strict'

LocalStrategy = require('passport-local').Strategy
User = require('../models/user')

module.exports = new LocalStrategy
  usernameField: 'username'
  passwordField: 'password'
,
(username, password, done) ->
  User.findOne({username}).exec (err, user) ->
    if err
      done(err)
    else if not user
      done(null, false, message: 'Unknown user')
    else if not user.authenticate(password)
      done(null, false, message: 'Invalid password')
    else
      done(null, user)
