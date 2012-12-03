Controller = require './base/controller'
HeaderView = require 'views/header/view'

module.exports = class HeaderController extends Controller
  initialize: ->
    super
    @view = new HeaderView()