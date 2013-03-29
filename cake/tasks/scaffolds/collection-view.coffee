Scaffold = require '../../lib/scaffold'

module.exports = class CollectionView extends Scaffold

  validate: (name) ->
    return false if name is 'base'
    super