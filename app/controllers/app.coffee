'use strict'

Controller = require('controllers/base/controller')
IndexView = require('views/index')

module.exports = class AppController extends Controller

  index: ->
    @view = new IndexView
