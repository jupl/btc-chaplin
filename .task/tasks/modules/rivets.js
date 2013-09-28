'use strict';

var bower = require('../bower');
var rivets = module.exports = Object.create(null);

rivets.version = '~0.5.13';

rivets.add = function() {
  var self = this;

  bower.edit(function(json) {
    json.dependencies.rivets = self.version;
    json.overrides.rivets = {
      main: 'dist/rivets.js'
    };
  });
};

rivets.remove = function() {
  bower.edit(function(json) {
    delete json.dependencies.rivets;
    delete json.overrides.rivets;
  });
};