PageView = require 'views/base/page'

template = require './template'

module.exports = class IndexView extends PageView
  className: 'index-view'
  template: template
  container: 'body'