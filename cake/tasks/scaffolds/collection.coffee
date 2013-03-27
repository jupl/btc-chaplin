Scaffold = require '../../lib/scaffold'

module.exports = class Collection extends Scaffold

  promptString: ->
    super.replace(':', ' (as singular, not plural):')