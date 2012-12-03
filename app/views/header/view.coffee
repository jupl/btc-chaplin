View = require 'views/base/view'

template = require './template'

module.exports = class HeaderView extends View
  className: 'header-view'
  template: template
  autoRender: yes
  container: '#header-container'
  id: 'header'