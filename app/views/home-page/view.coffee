View = require 'views/base/view'

template = require './template'

module.exports = class HomePageView extends View
  className: 'home-page-view'
  template: template
  autoRender: yes
  container: '#page-container'