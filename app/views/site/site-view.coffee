View = require 'views/base/view'

# Site view is a top-level view which is bound to body
# Regions are used to define logical page containers
module.exports = class SiteView extends View
  container: 'body'
  id: 'site-container'
  regions:
    header: '#header-container'
    main: '#page-container'
    footer: '#footer-container'
  template: require './templates/site'
