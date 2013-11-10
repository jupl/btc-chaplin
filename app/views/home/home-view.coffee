View = require('views/base/view')

module.exports = class IndexView extends View
  className: 'home-view'
  container: 'body'
  template: require('./templates/home')
