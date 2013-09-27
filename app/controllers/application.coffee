Controller = require('controllers/base/controller')
IndexView = require('views/index/view')

module.exports = class ApplicationController extends Controller

  index: ->
    @view = new IndexView