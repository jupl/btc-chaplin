# Changelog

### 0.12.0 (March 10, 2014)
- Update coffee-script-brunch
- Do not use pushState by default for this skeleton
- Remove `view-helper.coffee`
- Move `utils.coffee`
- Bugfixes with Davy
- Update BTC Cordova
  - Fix bug with running Cordova tasks on existing project
  - Update Hammer.js
    - Update how Hammer and jquery.hammer is added to Bower
- Update BTC
  - Update Bluebird
  - Update PhantomJS
  - Update Selenium Webdriver
  - Update Express.js
  - Include Normalize.css by default
  - Add BrowserSync as an option for autoreload
  - Update paths for code and site testing
  - Rename paths for generated JS/CSS
  - For index.html, use relative paths by default
  - Remove server extras (let the user customize as needed, will go to a separate repo)
  - Simplify generator-related tasks by reusing code
  - Installing test-related modules does not modify `package.json`
  - Install Bower components automatically after running `npm install`
  - Revert to editing `package.json` and `bower.json`

### 0.11.0 (February 11, 2014)
- Enforce strict mode
- Remove dashes in generators
- Update BTC
  - Simplify Brunch config
  - Detect browsers in Karma
  - Unify `add:codetesting` and `add:sitetesting` tasks
  - Add aliases to generator tasks
  - Simplify scaffold-related tasks
  - Fix issue with waiting for files to build before running tasks
  - Revert to editing `package.json` and `bower.json`

### 0.10.0 (February 5, 2014)
- Update Davy
- Add back coffee-script module
- Update BTC
  - Do not install code/site testing-related packages by default
  - Add tasks to install/uninstall code/site testing-related packages
  - Update Sinon Chai
  - Fix bug in `npm:clean`

### 0.9.0 (February 4, 2014)
- Update Chaplin
- Update console-polyfill
- Update BTC
  - Add `npm:clean` task
  - Clean up package.json
  - Update jQuery
  - Update normalize.css
  - Update Chai
  - Add structure to `server` directory
  - Update karma-chai-plugins

#### 0.8.3 (January 15, 2014)
- Update BTC
  - Fix watch in `test:code`
  - Update Mocha
  - Update Bluebird
  - Update Nodemon

#### 0.8.2 (December 21, 2013)
- Update Cordova Brunch
  - Add task to add/remove plugins
  - Add task to upgrade device platform
  - Add task to list device platforms and plugins
- Update BTC
  - Update Mocha
  - Update WebDriverJS

#### 0.8.1 (December 14, 2013)
- Fix consistency in generators
- Update Cordova to 3.3
- Update BTC
  - Allow multiple names to be specified per scaffold
  - Move default Jake task to Jakefile
  - Include server to customize and add services
  - Update packages

### 0.8.0 (December 12, 2013)
- Update dependencies (Chaplin, Lo-Dash, Exoskeleton)
- Reference Bower for Less Hat
- Update BTC
  - Fix Windows support
  - Internal fix to bring back spawn options
  - Add specific WebStorm and IntelliJ files to gitignore
  - Stop worrying about absolute paths
  - Mark execute promises as cancellable
  - Move auto-reload-brunch to devDependencies
  - Allow project's bower to be run if root (or root-like)
  - Update selenium-webdriver
  - Update dependencies
  - Added `bower:clean` task
  - Changed behavior of `gen`/`del` tasks

#### 0.7.2 (November 14, 2013)
- Flesh out test generators a bit
- Update BTC

#### 0.7.1 (November 9, 2013)
- Fix issue with exoskeleton task
- Update from BTC

### 0.7.0 (November 9, 2013)
- Remove Bootstrap (use Bower or manually set up)
- Add LESS Hat
- Update from BTC

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
