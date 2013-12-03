View = require('views/base/view')

module.exports = class HomeView extends View
  className: 'home-page-view'
  container: '#page-container'
  template: require('./templates/home-page')
