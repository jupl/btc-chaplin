Exec = require '../lib/exec'

module.exports = class Add extends Exec
  command: './node_modules/.bin/brunch'
  args: ['generate']

  bootstrap: => @_add 'bootstrap'
  stickit: => @_add 'stickit'

  _add: (type) ->
    args = @args[..]
    args.push type
    args.push 'ok'
    @exec args