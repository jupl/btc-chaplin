'use strict'

connection = require('./index')
bcrypt = require('bcryptjs')
Schema = require('mongoose').Schema

schema = new Schema
  username:
    type: String
    unique: true
    trim: true
    validate: /^\S+$/
  password: String

# May change if using multiple strategies for Passport.
schema.path('username').required(true)
schema.path('password').required(true)

schema.path('password').set (password) ->
  bcrypt.hashSync(password, 12)

schema.method 'authenticate', (password) ->
  bcrypt.compareSync(password, @password)

module.exports = connection.model('User', schema)
