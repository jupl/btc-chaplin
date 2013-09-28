'use strict';

var bower = require('../bower');
var _string = module.exports = Object.create(null);

_string.version = '~2.3.3';

_string.add = function() {
  var self = this;

  bower.edit(function(json) {
    json.dependencies['underscore.string'] = self.version;
    json.overrides['underscore.string'] = {
      dependencies: {
        lodash: '*'
      },
      main: 'lib/underscore.string.js'
    };
  });
};

_string.remove = function() {
  bower.edit(function(json) {
    delete json.dependencies['underscore.string'];
    delete json.overrides['underscore.string'];
  });
};