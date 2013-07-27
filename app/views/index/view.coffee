View = require 'views/base/view'

template = require './template'

module.exports = class IndexView extends View
  className: 'index-view'
  container: 'body'
  template: template
