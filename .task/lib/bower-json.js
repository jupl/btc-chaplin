'use strict';

var path = require('path');
var jsonfile = require('jsonfile');
var bowerJson = module.exports = Object.create(null);
var filename = path.resolve(__dirname, '../../bower.json');

bowerJson.edit = function(callback) {
  var json = jsonfile.readFileSync(filename);
  callback(json);
  jsonfile.writeFileSync(filename, json);
};