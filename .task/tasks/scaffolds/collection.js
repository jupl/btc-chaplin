'use strict';

var scaffold = require('../../lib/scaffold');
var collection = module.exports = Object.create(scaffold);

collection.name = 'collection';

collection.promptString = function() {
  return scaffold.promptString.call(this, 'collection (as singular, not plural)');
};