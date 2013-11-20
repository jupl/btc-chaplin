Controller = require('controllers/base/controller')
HomePageView = require('views/home/home-page-view')

module.exports = class ApplicationController extends Controller

  index: ->
    @view = new HomePageView
