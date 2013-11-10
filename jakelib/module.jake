// Tasks to add modules to the project that are not included by default.
// This is usually either Bower packages or module-based Scaffolt generators.
var generators = require('./lib').generators;
var jsonfile = require('jsonfile');
var Promise = require('bluebird');
var resolvePath = require('./lib').resolvePath;

var bowerFile = resolvePath('bower.json');

namespace('add', function() {
  desc('Add jQuery');
  task('jquery', function() {
    editBower(function() {
      this.dependencies.jquery = '~2.0.3';
    });
  });

  desc('Add Lo-Dash');
  task('lodash', function() {
    editBower(function() {
      this.dependencies.lodash = '~2.0.0';
    });
  });

  desc('Add Rivets for better view/model data binding');
  task('rivets', function() {
    editBower(function() {
      this.dependencies.rivets = '~0.6.4';
      this.overrides.rivets = {
        main: 'dist/rivets.js'
      };
    });
  });

  desc('Add Exoskeleton (replaces Backbone, removes jQuery and Lodash)');
  task('exoskeleton', function() {
    jake.Task['rem:jquery'].invoke();
    jake.Task['rem:lodash'].invoke();
    editBower(function() {
      this.dependencies.exoskeleton = '~0.5.1';
      this.overrides.chaplin = {
        dependencies: {
          exoskeleton: '*'
        }
      };
      delete this.overrides.backbone;
    });
  });

  desc('Add Davy for promise support (useful with Exoskeleton)');
  task('davy', function() {
    editBower(function() {
      this.dependencies.davy = '~0.0.7';
    });
  });

  generators.forEach(function(generator) {
    if(generator.isModule) {
      desc('Add ' + generator.description);
      task(generator.task, function() {
        return new Promise(function(resolve) {
          jake.Task['scaffold:add']
          .addListener('complete', resolve)
          .invoke(generator.name);
        });
      });
    }
  });
});

namespace('rem', function() {
  desc('Remove jQuery');
  task('jquery', function() {
    editBower(function() {
      delete this.dependencies.jquery;
    });
  });

  desc('Remove Lo-Dash');
  task('lodash', function() {
    editBower(function() {
      delete this.dependencies.lodash;
    });
  });

  desc('Remove Rivets');
  task('rivets', function() {
    editBower(function() {
      delete this.dependencies.rivets;
      delete this.overrides.rivets;
    });
  });

  desc('Remove Exoskeleton (restores classic Backbone, jQuery, and Lo-Dash)');
  task('exoskeleton', function() {
    jake.Task['rem:jquery','rem:lodash'].invoke();
    editBower(function() {
      this.overrides.backbone = {
        dependencies: {
          lodash: '*',
          jquery: '*'
        },
        main: 'backbone.js'
      };
      delete this.dependencies.exoskeleton;
      delete this.overrides.chaplin;
    });
  });

  desc('Remove Davy');
  task('davy', function() {
    editBower(function() {
      delete this.dependencies.davy;
    });
  });

  generators.forEach(function(generator) {
    if(generator.isModule) {
      desc('Remove ' + generator.description);
      task(generator.task, function() {
        return new Promise(function(resolve) {
          jake.Task['scaffold:rem']
          .addListener('complete', resolve)
          .invoke(generator.name);
        });
      });
    }
  });
});

function editBower(callback) {
  var json = jsonfile.readFileSync(bowerFile);
  callback.call(json);
  jsonfile.writeFileSync(bowerFile, json);
}
