require('lib/view-helper') # Just load the view helpers, no return value

module.exports = class View extends Chaplin.View
  autoRender: yes

  # Precompiled templates function initializer.
  getTemplateFunction: ->
    @template

  render: ->
    super
    return unless @model
    if @_rivets
      @_rivets.build()
    else
      @_rivets = rivets?.bind(@el, {@model})

  dispose: ->
    @_rivets?.unbind()
    delete @_rivets
    super
