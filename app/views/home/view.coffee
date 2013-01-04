View = require 'views/base/view'

template = require './template'

module.exports = class HomeView extends View
  className: 'home-view'
  template: template
  autoRender: yes
  container: '#page-container'