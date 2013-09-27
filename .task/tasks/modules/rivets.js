'use strict';

var bowerJson = require('../../lib/bower-json');
var rivets = module.exports = Object.create(bowerJson);

rivets.add = function() {
  this.edit(function(json) {
    json.dependencies.rivets = '~0.5.13';
    json.overrides.rivets = {
      main: 'dist/rivets.js'
    };
  });
};

rivets.remove = function() {
  this.edit(function(json) {
    delete json.dependencies.rivets;
    delete json.overrides.rivets;
  });
};