require 'lib/view-helper' # Just load the view helpers, no return value

module.exports = class View extends Chaplin.View
  autoRender: yes

  # Precompiled templates function initializer.
  getTemplateFunction: ->
    @template

  constructor: ->
    @initSelectors()
    super

  initSelectors: ->
    for element, selector of @elements then do (element, selector) =>
      this["$#{element}"] = (subSelector) =>
        $el = @$ selector
        $el = $el.find subSelector if subSelector
        $el

  redirectTo: (url, options = {}) ->
    @publishEvent '!router:route', url, options, (routed) ->
      throw new Error 'View#redirectTo: no route matched' unless routed