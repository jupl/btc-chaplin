Controller = require('controllers/base/controller')
HomeView = require('views/home/home-view')

module.exports = class ApplicationController extends Controller

  index: ->
    @view = new HomeView
