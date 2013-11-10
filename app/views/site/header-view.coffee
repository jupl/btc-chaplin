View = require 'views/base/view'

module.exports = class HeaderView extends View
  template: require './templates/header'
  autoRender: true
  className: 'navbar'
  tagName: 'header'
  attributes:
    'role': 'banner'