View = require 'views/base/view'

module.exports = class FooterView extends View
  template: require './templates/footer'
  autoRender: true
  className: 'footer'
  tagName: 'footer'
  attributes:
    'role': 'contentinfo'

  render: ->
    super
    @$('[data-name="year"]').html "#{new Date().getFullYear()}"
    @