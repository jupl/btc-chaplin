Chaplin = require 'chaplin'
require 'lib/view-helper' # Just load the view helpers, no return value

module.exports = class View extends Chaplin.View
  # Precompiled templates function initializer.
  getTemplateFunction: ->
    @template

  constructor: ->
    @initSelectors()
    super

  render: ->
    super
    @stickit()

  initSelectors: ->
    for element, selector of @elements do (element, selector) =>
      this["$#{element}"] = (subSelector) =>
        $el = @$(selector)
        $el = $el.find subSelector if subSelector
        $el