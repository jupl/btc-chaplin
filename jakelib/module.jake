// Tasks to add modules to the project that are not included by default.
// This is usually either Bower packages or module-based Scaffolt generators.
var generators = require('./lib/generators');
var jsonfile = require('jsonfile');
var Promise = require('bluebird');

namespace('add', function() {
  desc('Add jQuery');
  task('jquery', function() {
    editBower(function() {
      this.dependencies.jquery = '~2.0.3';
    });
  });

  desc('Add Rivets');
  task('rivets', function() {
    editBower(function() {
      this.dependencies.rivets = '~0.5.13';
      this.overrides.rivets = {
        main: 'dist/rivets.js'
      };
    });
  });

  generators.forEach(function(generator) {
    if(generator.isModule) {
      desc('Add ' + generator.description);
      task(generator.task, function() {
        return new Promise(function(resolve) {
          jake.Task['scaffold:add'].addListener('complete', resolve).invoke(generator.name);
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

  desc('Remove Rivets');
  task('rivets', function() {
    editBower(function() {
      delete this.dependencies.rivets;
      delete this.overrides.rivets;
    });
  });

  generators.forEach(function(generator) {
    if(generator.isModule) {
      desc('Remove ' + generator.description);
      task(generator.task, function() {
        return new Promise(function(resolve) {
          jake.Task['scaffold:rem'].addListener('complete', resolve).invoke(generator.name);
        });
      });
    }
  });
});

function editBower(callback) {
  var json = jsonfile.readFileSync('bower.json');
  callback.call(json);
  jsonfile.writeFileSync('bower.json', json);
}
