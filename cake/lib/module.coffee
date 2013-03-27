Scaffold = require './scaffold'

module.exports = class Module extends Scaffold

  @add: ->
    @generate 'placeholder'

  @remove: ->
    @destroy 'placeholder'