'use strict'

connection = require('./index')
bcrypt = require('bcryptjs')
{Schema} = require('mongoose')

schema = new Schema
  username:
    type: String
    unique: yes
    trim: yes
    validate: /^\S+$/
  password: String

# May change if using multiple strategies for Passport.
schema.path('username').required(yes)
schema.path('password').required(yes)

schema.path('password').set (password) ->
  bcrypt.hashSync(password, 12)

schema.method 'authenticate', (password) ->
  bcrypt.compareSync(password, @password)

module.exports = connection.model('User', schema)
