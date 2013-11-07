// Scaffolt non-module generator tasks
require('sugar');
var generators = require('./lib').generators;
var Promise = require('bluebird');

// Iterate over non-module generators for creating tasks that scaffold
namespace('gen', function() {
  generators.forEach(function(generator) {
    if(!generator.isModule) {
      desc('Generate a ' + generator.description);
      task(generator.task, function() {
        validate(generator.name, process.env.name);
        return new Promise(function(resolve) {
          jake.Task['scaffold:gen']
          .addListener('complete', resolve)
          .invoke(generator.name);
        });
      });
    }
  });
});

// Iterate over non-module generators for creating tasks that undo a scaffold
namespace('del', function() {
  generators.forEach(function(generator) {
    if(!generator.isModule) {
      desc('Destroy a generated ' + generator.description);
      task(generator.task, function() {
        validate(generator.name, process.env.name);
        return new Promise(function(resolve) {
          jake.Task['scaffold:del']
          .addListener('complete', resolve)
          .invoke(generator.name);
        });
      });
    }
  });
});

function validate(generator, name) {
  var isView = generator === 'view' || generator === 'collection-view';
  if(isView && name.dasherize() === 'base') {
    fail('name parameter cannot be "base"');
  }
}
