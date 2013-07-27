# Load all tests.
module.exports = ->
  window.require.list().filter((_) -> /-test$/.test _).forEach(require)
