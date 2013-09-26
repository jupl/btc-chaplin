'use strict';

var bower = require('./tasks/bower');
var build = require('./tasks/build');
var help = require('./tasks/help');

module.exports = {

  add: {
    bootstrap: {
      description:  'Add Bootstrap',
      task:         bootstrap.add.bind(bootstrap),

      js: {
        description:  'Add Bootstrap JavaScript',
        task:         bootstrap.js.add.bind(bootstrap.js)
      }
    }
  },

  rem: {
    bootstrap: {
      description:  'Remove Bootstrap and any of the above Bootstrap-related',
      task:         bootstrap.remove.bind(bootstrap),

      js: {
        description:  'Remove Bootstrap JavaScript',
        task:         bootstrap.js.remove.bind(bootstrap.js)
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