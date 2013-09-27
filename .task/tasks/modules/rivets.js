'use strict';

var bower = require('../bower');
var rivets = module.exports = Object.create(null);

rivets.add = function() {
  bower.edit(function(json) {
    json.dependencies.rivets = '~0.5.13';
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