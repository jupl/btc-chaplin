# Changelog

### WIP
- Removed unneeded tests merged in from upstream
- Adding opinion to naming standards for page-level views (use "-page-view" suffix)
- Update from CB
- Update README to start differentiating from CB
- Bring the "-controller" suffix back to controller filenames

### 0.7.0 (November 10, 2013)
- Update from CB
- Giving an opinion to test file names via generators

### 0.6.5 (November 10, 2013)
- Merged in Brunch Toolchain 0.5.3, giving us Karma and autorun tests
- Fix issue with stylesheet generation
- Fix issue with exoskeleton generation task

### 0.6.4 (November 10, 2013)
- Revamped generators to give more opinion to views orginization
- Pages now composed using regions
- Created header and footer regions
- Added URL view helper from BWC
- Reorganized styling files

### 0.6.3 (November 8, 2013)
- Switch test generators from JS to Coffee

### 0.6.2 (November 8, 2013)
- Updating README

### 0.6.1 (November 8, 2013)
- Forked from Chapless Brunch (CB)
- Added CoffeeLint and disabled max line length
- Removed Bootstrap
- Added Shrinkwrap build task, e.g. `jake npm:shrinkwrap`
- Replaced Eco with Handlebars
- Replaced Less with Sass
- Stop using view-specific styles
- Updated README to reflect above changes

### 0.6.0 (November 5, 2013)
- Update from BTC
- Update Bootstrap to 3.0.1
- Update Rivets
- Ensure Bootstrap default theme is included
- Added Exoskeleton, Lo-Dash, and Davy as modules
- Added some code to handle either Backbone or Exoskeleton
- Remove CoffeeLint (check out EditorConfig)
- Remove Underscore.String by default
- Remove `redirectTo` function in views (use `Chaplin.helpers`)

#### 0.5.1 (September 27, 2013)
- Make Rivets and Underscore.string optional
- General cleanup
- Bugfixes

### 0.5.0 (September 26, 2013)
- Update from BTC
- Update Bootstrap to v3
- Remove Clearless in favor of Bootstrap's mixins
- Add Rivets for binding

### 0.4.0 (August 19, 2013)
- Update from BTC
- Refactor to reflect Brunch and BWC
- Remove Stickit and Transit (use Bower)

### 0.3.0 (June 6, 2013)
- Integrate BTC Bootstrap
- Update from BWC
- Underscore -> Lo-Dash
- Add Transit
- Update jQuery

#### 0.2.3 (May 20, 2013)
- Bugfix in base collection view.

#### 0.2.2 (May 19, 2013)
- Update Brunch Toolchain.
- Update Chaplin, jQuery, and Font Awesome.

#### 0.2.1 (April 15, 2013)
- Update Brunch Toolchain.
- Update Chaplin.

### 0.2.0 (March 31, 2013)
- Update Backbone and Chaplin.
- Add test generator.
- Have test modules be automatically included again.
- Skeleton cleanup.

### 0.1.0 (March 28, 2013)
- Initial release.
