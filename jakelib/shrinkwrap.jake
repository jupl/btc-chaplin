// Shrinkwrap to lock down dependency versions
var Promise = require('bluebird');

namespace('npm', function() {
  desc('Lock down Node module dependency versions');
  task('shrinkwrap', function() {
    return new Promise(function(resolve) {
      jake.exec('npm shrinkwrap', {interactive: true}, resolve);
    });
  });
});