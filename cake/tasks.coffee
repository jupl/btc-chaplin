Build = require './tasks/build'
Help = require './tasks/help'
Scaffold =
  Model:          require './tasks/scaffold/model'
  Collection:     require './tasks/scaffold/collection'
  View:           require './tasks/scaffold/view'
  CollectionView: require './tasks/scaffold/collection-view'
  Controller:     require './tasks/scaffold/controller'

module.exports =
  
  gen:
    model:
      command:      'gen:model'
      description:  'Generate a Chaplin Model'
      task:         Scaffold.Model.generate
    collection:
      command:      'gen:collection'
      description:  'Generate a Chaplin Collection + Model'
      task:         Scaffold.Collection.generate
    view:
      view:
        command:      'gen:view'
        description:  'Generate a Chaplin View'
        task:         Scaffold.View.generate
      collection:
        command:      'gen:view:collection'
        description:  'Generate a Chaplin CollectionView + Item View'
        task:         Scaffold.CollectionView.generate
    controller:
      command:      'gen:controller'
      description:  'Generate a Chaplin Controller\n'
      task:         Scaffold.Controller.generate

  del:
    model:
      command:      'del:model'
      description:  'Delete a Chaplin Model'
      task:         Scaffold.Model.destroy
    collection:
      command:      'del:collection'
      description:  'Delete a Chaplin Collection + Model'
      task:         Scaffold.Collection.destroy
    view:
      view:
        command:      'del:view'
        description:  'Delete a Chaplin View'
        task:         Scaffold.View.destroy
      collection:
        command:      'del:view:collection'
        description:  'Delete a Chaplin CollectionView + Item View'
        task:         Scaffold.CollectionView.destroy
    controller:
      command:      'del:controller'
      description:  'Delete a Chaplin Controller\n'
      task:         Scaffold.Controller.destroy

  build:
    once:
      dev:
        command:      'build:dev'
        description:  'Build project'
        task:         Build.once.development
      prod:
        command:      'build:prod'
        description:  'Build project minified'
        task:         Build.once.production
    watch:
      dev:
        command:      'watch:dev'
        description:  'Continuously rebuild project on changes'
        task:         Build.watch.development
      prod:
        command:      'watch:prod'
        description:  'Continuously rebuild project minified on changes'
        task:         Build.watch.production
    server:
      dev:
        command:      'server:dev'
        description:  'Continuously rebuild project on changes, and host locally'
        task:         Build.server.development
      prod:
        command:      'server:prod'
        description:  'Continuously rebuild project minified on changes, and host locally\n'
        task:         Build.server.production

  help:
    npm:
      command:      'help:npm'
      description:  'Help for those running commands from npm'
      task:         Help.npm