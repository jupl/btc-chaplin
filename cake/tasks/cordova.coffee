fs = require 'fs'
wrench = require 'wrench'
commander = require 'commander'
_s = require 'underscore.string'
Exec = require '../lib/exec'

module.exports = class Cordova extends Exec
  command: './node_modules/.bin/cordova'
  cordovaPath: 'build/cordova'
  platforms: ['android', 'ios']

  init: =>
    @_initialize()
  initAndroid: =>
    @_initialize =>
      @addAndroid()
  initIOS: =>
    @_initialize =>
      @addIOS()
  initAll: =>
    @_initialize =>
      @addAll()

  addAndroid: => @_add 'android'
  addIOS:     => @_add 'ios'
  addAll:     => @_add @platforms...

  removeAndroid: => @_remove 'android'
  removeIOS:     => @_remove 'ios'
  removeAll:     => @_remove @platforms...

  buildAndroid: => @_build 'android'
  buildIOS:     => @_build 'ios'
  buildAll:     => @_build @platforms...

  emulateAndroid: => @_emulate 'android'
  emulateIOS:     => @_emulate 'ios'
  emulateAll:     => @_emulate @platforms...

  _initialize: (callback) ->
    wrench.rmdirSyncRecursive @cordovaPath, ->
    args = ['create', @cordovaPath]

    packageNamePrompt = (callback) =>
      commander.prompt 'Package name (optional): ', (name) =>
        name = _s.clean name
        name = "#{name.charAt(0).toLowerCase()}#{name.slice(1)}"
        if name isnt ''
          args.push name
          appNamePrompt callback
        else
          callback()

    appNamePrompt = (callback) =>
      commander.prompt 'App name (optional): ', (name) =>
        name = _s.titleize _s.clean name
        args.push name if name isnt ''
        callback()

    packageNamePrompt =>
      @exec args, =>
        if callback
          callback()
        else
          process.exit()

  _add: (platforms...) ->
    platforms.unshift 'add'
    platforms.unshift 'platform'
    onExit = =>
      for platform in platforms when platform isnt 'add'
        fs.createReadStream("./cake/gitignore/#{platform}.gitignore")
          .pipe(fs.createWriteStream("#{@cordovaPath}/platforms/#{platform}/.gitignore"))
      process.exit()
    {command} = this
    @command = "../.#{@command}"
    @exec(platforms, onExit, cwd: @cordovaPath, env: process.env)
    @command = command

  _remove: (platforms...) ->
    platforms.unshift 'remove'
    platforms.unshift 'platform'
    {command} = this
    @command = "../.#{@command}"
    @exec(platforms, (->), cwd: @cordovaPath)
    @command = command

  _build: (platforms...) ->
    platforms.unshift 'build'
    {command} = this
    @command = "../.#{@command}"
    @exec(platforms, (->), cwd: @cordovaPath)
    @command = command

  _emulate: (platforms...) ->
    platforms.unshift 'emulate'
    {command} = this
    @command = "../.#{@command}"
    @exec(platforms, (->), cwd: @cordovaPath)
    @command = command