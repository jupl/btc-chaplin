'use strict';

var Q = require('q');
var modul = require('../../lib/modul');
var bootstrap = module.exports = Object.create(modul);

bootstrap.js = require('./bootstrap-js');

bootstrap.name = 'bootstrap';