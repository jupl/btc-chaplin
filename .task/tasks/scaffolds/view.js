'use strict';

var scaffold = require('../../lib/scaffold');
var view = module.exports = Object.create(scaffold);

view.name = 'view';

view.validate = function(name) {
  if(name === 'base') {
    return false;
  }
  return scaffold.validate.apply(this, arguments);
};