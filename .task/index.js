'use strict';

var bower = require('./tasks/bower');
var build = require('./tasks/build');
var help = require('./tasks/help');

module.exports = {

  add: {
    bootstrap: {
      description:  'Add Bootstrap with FontAwesome',
      task:         bootstrap.add -> do Module.Bootstrap.FontAwesome.add
      js: {
        description:  'Add Bootstrap JavaScript',
        task:         bootstrap.js.add
      },
      responsive: {
        description:  'Add Bootstrap responsive',
        task:         -> do Module.Bootstrap.Responsive.add
      },
      glyph: {
        description:  'Add Bootstrap glyphicons (removes FontAwesome)',
        task:         -> do Module.Bootstrap.Glyphicons.add
      },
      awesome: {
        description:  'Add FontAwesome into Bootstrap (removes Glyphicons)\n'
        task:         -> do Module.Bootstrap.FontAwesome.add
      }
    }
  },

  rem: {
    bootstrap: {
      description:  'Remove Bootstrap and any of the above Bootstrap-related'
      task:         -> do Module.Bootstrap.remove
      js: {
        command:      'rem:bootstrap:js'
        description:  'Remove Bootstrap JavaScript'
        task:         -> do Module.Bootstrap.JS.remove
      },
      responsive: {
        command:      'rem:bootstrap:responsive'
        description:  'Remove Bootstrap responsive\n'
        task:         -> do Module.Bootstrap.Responsive.remove
      }
    }
  },

  bower: {
    install: {
      description:  'Download and install Bower dependencies\n',
      task:         bower.install.bind(bower)
    }
  },

  build: {
    dev: {
      description:  'Build project',
      task:         build.once.web.dev
    },
    prod: {
      description:  'Build project minified',
      task:         build.once.web.prod
    }
  },

  watch: {
    dev: {
      description:  'Continuously rebuild project on changes',
      task:         build.watch.web.dev
    },
    prod: {
      description:  'Continuously rebuild project minified on changes',
      task:         build.watch.web.prod
    }
  },

  server: {
    dev: {
      description:  'Continuously rebuild project on changes, and host locally',
      task:         build.server.web.dev
    },
    prod: {
      description:  'Continuously rebuild project minified on changes, and host locally\n',
      task:         build.server.web.prod
    }
  },

  help: {
    npm: {
      description:  'Help for those running commands from npm\n',
      task:         help.npm.bind(help)
    }
  }
};