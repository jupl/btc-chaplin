Build = require './tasks/build'
Help = require './tasks/help'
Cordova = require './tasks/cordova'
Scaffold =
  Model:          require './tasks/scaffolds/model'
  Collection:     require './tasks/scaffolds/collection'
  View:           require './tasks/scaffolds/view'
  CollectionView: require './tasks/scaffolds/collection-view'
  Controller:     require './tasks/scaffolds/controller'
Module =
  Bootstrap: require './tasks/modules/bootstrap'
  Stickit:   require './tasks/modules/stickit'
  Fastclick: require './tasks/modules/fastclick'

module.exports =
  
  add:
    bootstrap:
      command:      'add:bootstrap'
      description:  'Add Bootstrap with Font Awesome'
      task:         -> do Module.Bootstrap.add
    stickit:
      command:      'add:stickit'
      description:  'Add backbone.stickit'
      task:         -> do Module.Stickit.add
    fastclick:
      command:      'add:fastclick'
      description:  'Add FastClick\n'
      task:         -> do Module.Fastclick.add

  rem:
    bootstrap:
      command:      'rem:bootstrap'
      description:  'Remove Bootstrap with Font Awesome'
      task:         -> do Module.Bootstrap.remove
    stickit:
      command:      'rem:stickit'
      description:  'Remove backbone.stickit'
      task:         -> do Module.Stickit.remove
    fastclick:
      command:      'rem:fastclick'
      description:  'Remove FastClick\n'
      task:         -> do Module.Fastclick.remove

  gen:
    model:
      command:      'gen:model'
      description:  'Generate a Chaplin Model'
      task:         -> do Scaffold.Model.generate
    collection:
      command:      'gen:collection'
      description:  'Generate a Chaplin Collection + Model'
      task:         -> do Scaffold.Collection.generate
    view:
      command:      'gen:view'
      description:  'Generate a Chaplin View'
      task:         -> do Scaffold.View.generate
    collectionView:
      command:      'gen:view:collection'
      description:  'Generate a Chaplin CollectionView + Item View'
      task:         -> do Scaffold.CollectionView.generate
    controller:
      command:      'gen:controller'
      description:  'Generate a Chaplin Controller\n'
      task:         -> do Scaffold.Controller.generate

  del:
    model:
      command:      'del:model'
      description:  'Delete a Chaplin Model'
      task:         -> do Scaffold.Model.destroy
    collection:
      command:      'del:collection'
      description:  'Delete a Chaplin Collection + Model'
      task:         -> do Scaffold.Collection.destroy
    view:
      command:      'del:view'
      description:  'Delete a Chaplin View'
      task:         -> do Scaffold.View.destroy
    collectionView:
      command:      'del:view:collection'
      description:  'Delete a Chaplin CollectionView + Item View'
      task:         -> do Scaffold.CollectionView.destroy
    controller:
      command:      'del:controller'
      description:  'Delete a Chaplin Controller\n'
      task:         -> do Scaffold.Controller.destroy

  cordova:
    init:
      command:      'cordova:init'
      description:  'Create a new Cordova project'
      task:         -> do Cordova.initialize
    add:
      android:
        command:      'cordova:add:android'
        description:  'Add Android platform support to the Cordova project'
        task:         -> do Cordova.add.android
      ios:
        command:      'cordova:add:ios'
        description:  'Add iOS platform support to the Cordova project'
        task:         -> do Cordova.add.ios
    remove:
      android:
        command:      'cordova:rem:android'
        description:  'Remove Android platform support from the Cordova project'
        task:         -> do Cordova.remove.android
      ios:
        command:      'cordova:rem:ios'
        description:  'Remove iOS platform support from the Cordova project\n'
        task:         -> do Cordova.remove.ios

  build:
    android:
      dev:
        command:      'build:android:dev'
        description:  'Build project once for Android and deploy to a connected device'
        task:         -> do Build.once.android.development
      prod:
        command:      'build:android:prod'
        description:  'Build project once for Android minified and deploy to a connected device'
        task:         -> do Build.once.android.production
    ios:
      dev:
        command:      'build:ios:dev'
        description:  'Build project once for iOS and deploy to a connected device'
        task:         -> do Build.once.ios.development
      prod:
        command:      'build:ios:prod'
        description:  'Build project once for iOS minified and deploy to a connected device'
        task:         -> do Build.once.ios.production
    web:
      dev:
        command:      'build:web:dev'
        description:  'Build project once for web'
        task:         -> do Build.once.web.development
      prod:
        command:      'build:web:prod'
        description:  'Build project once for web minified\n'
        task:         -> do Build.once.web.production

  watch:
    cordova:
      dev:
        command:      'watch:cordova:dev'
        description:  'Continuously build on changes for Cordova'
        task:         -> do Build.watch.cordova.development
      prod:
        command:      'watch:cordova:prod'
        description:  'Continuously build on changes for Cordova minified'
        task:         -> do Build.watch.cordova.production
    web:
      dev:
        command:      'watch:web:dev'
        description:  'Continuously build on changes for web'
        task:         -> do Build.watch.web.development
      prod:
        command:      'watch:web:prod'
        description:  'Continuously build on changes for web minified\n'
        task:         -> do Build.watch.web.production

  server:
    dev:
      command:      'server:dev'
      description:  'Continuously build on changes for web and host locally'
      task:         -> do Build.server.web.development
    prod:
      command:      'server:prod'
      description:  'Continuously build on changes for web minified and host locally\n'
      task:         -> do Build.server.web.production

  emulate:
    android:
      dev:
        command:      'emulate:android:dev'
        description:  'Build project once for Android'
        task:         -> do Build.emulate.android.development
      prod:
        command:      'emulate:android:prod'
        description:  'Build project once for Android minified'
        task:         -> do Build.emulate.android.production
    ios:
      dev:
        command:      'emulate:ios:dev'
        description:  'Build project once for iOS'
        task:         -> do Build.emulate.ios.development
      prod:
        command:      'emulate:ios:prod'
        description:  'Build project once for iOS minified\n'
        task:         -> do Build.emulate.ios.production

  help:
    npm:
      command:      'help:npm'
      description:  'Help for those running commands from npm\n'
      task:         -> do Help.npm
