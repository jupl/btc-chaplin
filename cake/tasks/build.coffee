Exec = require '../lib/exec'

module.exports = class Build extends Exec
  command: './node_modules/.bin/brunch'

  onceDev: => @_build ['build'], prod: no
  onceProd: => @_build ['build'], prod: yes

  watchDev: => @_build ['watch'], prod: no
  watchProd: => @_build ['watch'], prod: yes

  serverDev: => @_build ['watch', '-s'], prod: no
  serverProd: => @_build ['watch', '-s'], prod: yes

  _build: (args, {prod} = {prod: no}) ->
    args.push '-m' if prod
    @exec args