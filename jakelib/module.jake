'use strict';

// Tasks to add modules to the project that are not included by default.
// This is usually either Bower packages or NPM packages.
var fs = require('fs');

namespace('add', function() {
  desc('Add jQuery');
  task('jquery', function() {
    editBower(function() {
      this.dependencies['jquery'] = '~2.1.0';
    });
  });

  desc('Add normalize.css');
  task('normalize', function() {
    editBower(function() {
      this.dependencies['normalize-css'] = '~3.0.0';
    });
  });

  desc('Add Lo-Dash');
  task('lodash', function() {
    editBower(function() {
      this.dependencies['lodash'] = '~2.4.1';
    });
  });

  desc('Add Rivets for better view/model data binding');
  task('rivets', function() {
    editBower(function() {
      this.dependencies['rivets'] = '~0.6.4';
      this.overrides.rivets = {
        main: 'dist/rivets.js'
      };
    });
  });

  desc('Add Exoskeleton (replaces Backbone, removes jQuery and Lodash)');
  task('exoskeleton', ['rem:jquery', 'rem:lodash'], function() {
    editBower(function() {
      this.dependencies['exoskeleton'] = '~0.6.1';
      this.overrides['chaplin'] = {
        dependencies: {
          exoskeleton: '*'
        }
      };
      delete this.overrides['backbone'];
    });
  });

  desc('Add Davy for promise support (useful with Exoskeleton)');
  task('davy', function() {
    editBower(function() {
      this.dependencies['davy'] = '~0.1.0';
    });
  });
});

namespace('rem', function() {
  desc('Remove jQuery');
  task('jquery', function() {
    editBower(function() {
      delete this.dependencies['jquery'];
    });
  });

  desc('Remove normalize.css');
  task('normalize', function() {
    editBower(function() {
      delete this.dependencies['normalize-css'];
    });
  });

  desc('Remove Lo-Dash');
  task('lodash', function() {
    editBower(function() {
      delete this.dependencies['lodash'];
    });
  });

  desc('Remove Rivets');
  task('rivets', function() {
    editBower(function() {
      delete this.dependencies['rivets'];
      delete this.overrides['rivets'];
    });
  });

  desc('Remove Exoskeleton (restores classic Backbone, jQuery, and Lo-Dash)');
  task('exoskeleton', ['add:jquery', 'add:lodash'], function() {
    editBower(function() {
      this.overrides['backbone'] = {
        dependencies: {
          lodash: '*',
          jquery: '*'
        },
        main: 'backbone.js'
      };
      delete this.dependencies['exoskeleton'];
      delete this.overrides['chaplin'];
    });
  });

  desc('Remove Davy');
  task('davy', function() {
    editBower(function() {
      delete this.dependencies['davy'];
    });
  });
});

function editBower(callback) {
  var json = JSON.parse(fs.readFileSync('bower.json'));
  callback.call(json);
  fs.writeFileSync('bower.json', JSON.stringify(json, null, 2) + '\n');
}
