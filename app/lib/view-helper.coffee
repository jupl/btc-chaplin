# Application-specific view helpers
# http://handlebarsjs.com/#helpers
# ---------------------------------

# Register custom Handlebars helpers
register = (name, fn) ->
  Handlebars.registerHelper name, fn

# Map helpers
# -----------

# Get Chaplin-declared named routes, e.g. {{url "likes#show" "105"}}
register 'url', (routeName, params..., options) ->
  Chaplin.helpers.reverse routeName, params
