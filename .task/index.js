'use strict';

var bower = require('./tasks/bower');
var build = require('./tasks/build');
var help = require('./tasks/help');
var cordova = require('./tasks/cordova');
var modul = {
  bootstrap:  require('./tasks/modules/bootstrap'),
  _string:    require('./tasks/modules/underscore-string'),
  rivets:     require('./tasks/modules/rivets'),
  fastclick:  require('./tasks/modules/fastclick'),
  hammer:     require('./tasks/modules/hammer')
};
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
      task:         function(){ modul.bootstrap.add() },

      js: {
        description:  'Add Bootstrap JavaScript',
        task:         function(){ modul.bootstrap.js.add() }
      }
    },
    underscore: {
      string: {
        description:  'Add Understore String',
        task:         function(){ modul._string.add() }
      }
    },
    rivets: {
      description:  'Add Rivets for data binding between views and models',
      task:         function(){ modul.rivets.add() }
    },
    fastclick: {
      description:  'Add Fastclick',
      task:         function(){ modul.fastclick.add() }
    },
    hammer: {
      description:  'Add Hammer.js as standalone',
      task:         function(){ modul.hammer.add() },

      jquery: {
        description:  'Add Hammer.js as jQuery plugin\n',
        task:         function(){ modul.hammer.jquery.add() }
      }
    }
  },

  rem: {
    bootstrap: {
      description:  'Remove Bootstrap and any of the above Bootstrap-related',
      task:         function(){ modul.bootstrap.remove() },

      js: {
        description:  'Remove Bootstrap JavaScript',
        task:         function(){ modul.bootstrap.js.remove() }
      }
    },
    underscore: {
      string: {
        description:  'Remove Understore String',
        task:         function(){ modul._string.remove() }
      }
    },
    rivets: {
      description:  'Remove Rivets',
      task:         function(){ modul.rivets.remove() }
    },
    fastclick: {
      description:  'Remove Fastclick',
      task:         function(){ modul.fastclick.remove() }
    },
    hammer: {
      description:  'Add Hammer.js as standalone\n',
      task:         function(){ modul.hammer.remove() }
    }
  },

  gen: {
    model: {
      description:  'Generate a Chaplin Model',
      task:         function(){ scaffold.model.generate() }
    },
    collection: {
      description:  'Generate a Chaplin Collection + Model',
      task:         function(){ scaffold.collection.generate() }
    },
    view: {
      description:  'Generate a Chaplin View',
      task:         function(){ scaffold.view.generate() },
      
      collection: {
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
      task:         function(){ scaffold.model.destroy() }
    },
    view: {
      description:  'Delete a Chaplin View',
      task:         function(){ scaffold.view.destroy() },

      collection: {
        description:  'Delete a Chaplin CollectionView + Item View',
        task:         function(){ scaffold.collectionView.destroy() }
      }
    },
    collection: {
      description:  'Delete a Chaplin Collection + Model',
      task:         function(){ scaffold.collection.destroy() }
    },
    controller: {
      description:  'Delete a Chaplin Controller',
      task:         function(){ scaffold.controller.destroy() }
    },
    test: {
      description:  'Delete a Mocha test file\n',
      task:         function(){ scaffold.test.destroy() }
    }
  },

  cordova: {
    init: {
      description:  'Create a new Cordova project',
      task:         function(){ cordova.initialize() }
    },
    add: {
      android: {
        description:  'Add Android platform support to the Cordova project',
        task:         function(){ cordova.add.android() }
      },
      ios: {
        description:  'Add iOS platform support to the Cordova project',
        task:         function(){ cordova.add.ios() }
      }
    },
    rem: {
      android: {
        description:  'Remove Android platform support from the Cordova project',
        task:         function(){ cordova.remove.android() }
      },
      ios: {
        description:  'Remove iOS platform support from the Cordova project\n',
        task:         function(){ cordova.remove.ios() }
      }
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
      description:  'Build project for web',
      task:         function(){ build.once.web.dev() }
    },
    prod: {
      description:  'Build project for web minified',
      task:         function(){ build.once.web.prod() }
    },

    android: {
      dev: {
        description:  'Build and compile project for Android',
        task:         function(){ build.once.android.dev() }
      },
      prod: {
        description:  'Build and compile project for Android minified',
        task:         function(){ build.once.android.prod() }
      }
    },

    ios: {
      dev: {
        description:  'Build and compile project for iOS',
        task:         function(){ build.once.ios.dev() }
      },
      prod: {
        description:  'Build and compile project for iOS minified\n',
        task:         function(){ build.once.ios.prod() }
      }
    }
  },

  watch: {
    dev: {
      description:  'Continuously rebuild project on changes for web',
      task:         function(){ build.watch.web.dev() }
    },
    prod: {
      description:  'Continuously rebuild project minified on changes for web\n',
      task:         function(){ build.watch.web.prod() }
    }
  },

  server: {
    dev: {
      description:  'Continuously rebuild project on changes, and host locally for web',
      task:         function(){ build.server.web.dev() }
    },
    prod: {
      description:  'Continuously rebuild project minified on changes, and host locally for web\n',
      task:         function(){ build.server.web.prod() }
    }
  },

  emulate: {
    android: {
      dev: {
        description:  'Build, compile, and deploy project to Android emulator',
        task:         function(){ build.emulate.android.dev() }
      },
      prod: {
        description:  'Build, compile, and deploy project minified to Android emulator',
        task:         function(){ build.emulate.android.prod() }
      }
    },
    ios: {
      dev: {
        description:  'Build, compile, and deploy project to iOS simulator',
        task:         function(){ build.emulate.ios.dev() }
      },
      prod: {
        description:  'Build, compile, and deploy project minified to iOS simulator\n',
        task:         function(){ build.emulate.ios.prod() }
      }
    }
  },

  help: {
    npm: {
      description:  'Help for those running commands from npm\n',
      task:         function(){ help.npm() }
    }
  }
};