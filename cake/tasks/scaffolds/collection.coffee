Scaffold = require '../../lib/scaffold'

module.exports = class Collection extends Scaffold

  promptString: ->
    super 'collection (as singular, not plural)'