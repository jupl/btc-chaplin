'use strict'

path = require('path')

module.exports =
  session:
    mongoUri: 'mongodb://localhost/sessions'
    secret: process.env.SESSION_SECRET or 'PLACEHOLDER'
  server:
    mongoUri: 'mongodb://localhost/models'
