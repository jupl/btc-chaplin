Model = require('./model')

module.exports = class Collection extends Chaplin.Collection
  # Use the project base model by default
  model: Model
