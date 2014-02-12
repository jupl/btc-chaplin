'use strict'

View = require('./view')

module.exports = class CollectionView extends Chaplin.CollectionView
  # This class doesn’t inherit from the application-specific View class,
  # so we need to borrow the methods from the View prototype:
  getTemplateFunction: View::getTemplateFunction
