Controller = require('controllers/base/controller')
IndexView = require('views/index')

module.exports = class ApplicationController extends Controller

  index: ->
    @view = new IndexView
