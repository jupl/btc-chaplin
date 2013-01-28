Controller = require 'controllers/base/controller'
HeaderView = require 'views/header/view'

module.exports = class HeaderController extends Controller

  constructor: ->
    super
    @view = new HeaderView