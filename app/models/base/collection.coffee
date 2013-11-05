Model = require('./model')

module.exports = class Collection extends Chaplin.Collection
  # Mixin a synchronization state machine
  # Backbone.utils.extend(@prototype, Chaplin.SyncMachine)

  # Use the project base model per default, not Chaplin.Model
  model: Model
