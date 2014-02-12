'use strict'

Model = require('./model')

module.exports = class Collection extends Chaplin.Collection
  model: Model
