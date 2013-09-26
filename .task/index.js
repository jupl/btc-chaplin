'use strict';

var bootstrap = require('./tasks/modules/bootstrap');
var bower = require('./tasks/bower');
var build = require('./tasks/build');
var help = require('./tasks/help');
var scaffold = {
  model:          require('./tasks/scaffolds/model'),
  collection:     require('./tasks/scaffolds/collection'),
  view:           require('./tasks/scaffolds/view'),
  collectionView: require('./tasks/scaffolds/collection-view'),
  controller:     require('./tasks/scaffolds/controller'),
  test:           require('./tasks/scaffolds/test')
};

module.exports = {
  add: {
    bootstrap: {
      description:  'Add Bootstrap',
      task:         function(){ bootstrap.add() },

      js: {
        description:  'Add Bootstrap JavaScript\n',
        task:         function(){ bootstrap.js.add() }
      }
    }
  },

  rem: {
    bootstrap: {
      description:  'Remove Bootstrap and any of the above Bootstrap-related',
      task:         function(){ bootstrap.remove() },

      js: {
        description:  'Remove Bootstrap JavaScript\n',
        task:         function(){ bootstrap.js.remove() }
      }
    }
  },

  gen: {
    model: {
      description:  'Generate a Chaplin Model',
      task:         function(){ scaffold.model.generate() }
    },
    view: {
      description:  'Generate a Chaplin View',
      task:         function(){ scaffold.view.generate() }
    },
    collection: {
      description:  'Generate a Chaplin Collection + Model',
      task:         function(){ scaffold.collection.generate() },

      view: {
        description:  'Generate a Chaplin CollectionView + Item View',
        task:         function(){ scaffold.collectionView.generate() }
      }
    },
    controller: {
      description:  'Generate a Chaplin Controller',
      task:         function(){ scaffold.controller.generate() }
    },
    test: {
      description:  'Generate a Mocha test file\n',
      task:         function(){ scaffold.test.generate() }
    }
  },

  del: {
    model: {
      description:  'Delete a Chaplin Model',
      task:         function(){ scaffold.model.generate() }
    },
    view: {
      description:  'Delete a Chaplin View',
      task:         function(){ scaffold.view.generate() }
    },
    collection: {
      description:  'Delete a Chaplin Collection + Model',
      task:         function(){ scaffold.collection.generate() },

      view: {
        description:  'Delete a Chaplin CollectionView + Item View',
        task:         function(){ scaffold.collectionView.generate() }
      }
    },
    controller: {
      description:  'Delete a Chaplin Controller',
      task:         function(){ scaffold.controller.generate() }
    },
    test: {
      description:  'Delete a Mocha test file\n',
      task:         function(){ scaffold.test.generate() }
    }
  },

  bower: {
    install: {
      description:  'Download and install Bower dependencies\n',
      task:         function(){ bower.install() }
    }
  },

  build: {
    dev: {
      description:  'Build project',
      task:         function(){ build.once.web.dev() }
    },
    prod: {
      description:  'Build project minified',
      task:         function(){ build.once.web.prod() }
    }
  },

  watch: {
    dev: {
      description:  'Continuously rebuild project on changes',
      task:         function(){ build.watch.web.dev() }
    },
    prod: {
      description:  'Continuously rebuild project minified on changes',
      task:         function(){ build.watch.web.prod() }
    }
  },

  server: {
    dev: {
      description:  'Continuously rebuild project on changes, and host locally',
      task:         function(){ build.server.web.dev() }
    },
    prod: {
      description:  'Continuously rebuild project minified on changes, and host locally\n',
      task:         function(){ build.server.web.prod() }
    }
  },

  help: {
    npm: {
      description:  'Help for those running commands from npm\n',
      task:         function(){ help.npm() }
    }
  }
};