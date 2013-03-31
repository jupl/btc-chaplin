Build = require './tasks/build'
Help = require './tasks/help'
Scaffold =
  Model:          require './tasks/scaffolds/model'
  Collection:     require './tasks/scaffolds/collection'
  View:           require './tasks/scaffolds/view'
  CollectionView: require './tasks/scaffolds/collection-view'
  Controller:     require './tasks/scaffolds/controller'
  Test:           require './tasks/scaffolds/test'
Module =
  Bootstrap: require './tasks/modules/bootstrap'
  Stickit:   require './tasks/modules/stickit'

module.exports =
  
  add:
    bootstrap:
      command:      'add:bootstrap'
      description:  'Add Bootstrap with Font Awesome'
      task:         -> do Module.Bootstrap.add
    stickit:
      command:      'add:stickit'
      description:  'Add backbone.stickit\n'
      task:         -> do Module.Stickit.add

  rem:
    bootstrap:
      command:      'rem:bootstrap'
      description:  'Remove Bootstrap with Font Awesome'
      task:         -> do Module.Bootstrap.remove
    stickit:
      command:      'rem:stickit'
      description:  'Remove backbone.stickit\n'
      task:         -> do Module.Stickit.remove

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
      description:  'Generate a Chaplin Controller'
      task:         -> do Scaffold.Controller.generate
    test:
      command:      'gen:test'
      description:  'Generate a Mocha test file\n'
      task:         -> do Scaffold.Test.generate

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
      description:  'Delete a Chaplin Controller'
      task:         -> do Scaffold.Controller.destroy
    test:
      command:      'del:test'
      description:  'Delete a Mocha test file\n'
      task:         -> do Scaffold.Test.destroy

  build:
    once:
      dev:
        command:      'build:dev'
        description:  'Build project'
        task:         -> do Build.once.web.development
      prod:
        command:      'build:prod'
        description:  'Build project minified'
        task:         -> do Build.once.web.production
    watch:
      dev:
        command:      'watch:dev'
        description:  'Continuously rebuild project on changes'
        task:         -> do Build.watch.web.development
      prod:
        command:      'watch:prod'
        description:  'Continuously rebuild project minified on changes'
        task:         -> do Build.watch.web.production
    server:
      dev:
        command:      'server:dev'
        description:  'Continuously rebuild project on changes, and host locally'
        task:         -> do Build.server.web.development
      prod:
        command:      'server:prod'
        description:  'Continuously rebuild project minified on changes, and host locally\n'
        task:         -> do Build.server.web.production

  help:
    npm:
      command:      'help:npm'
      description:  'Help for those running commands from npm\n'
      task:         -> do Help.npm