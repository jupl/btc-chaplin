Scaffold = require '../../lib/scaffold'

module.exports = class View extends Scaffold

  validate: (name) ->
    return false if name is 'base'
    super