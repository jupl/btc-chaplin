'use strict';

var bowerJson = require('../../lib/bower-json');
var _string = module.exports = Object.create(bowerJson);

_string.add = function() {
  this.edit(function(json) {
    json.dependencies['underscore.string'] = '~2.3.3';
    json.overrides['underscore.string'] = {
      dependencies: {
        lodash: '*'
      },
      main: 'lib/underscore.string.js'
    };
  });
};

_string.remove = function() {
  this.edit(function(json) {
    delete json.dependencies['underscore.string'];
    delete json.overrides['underscore.string'];
  });
};