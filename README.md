# Chapless Brunch 0.10.0
[<img src="https://david-dm.org/jupl/chapless-brunch.png"/>](https://david-dm.org/jupl/chapless-brunch)
[<img src="https://david-dm.org/jupl/chapless-brunch/dev-status.png"/>](https://david-dm.org/jupl/chapless-brunch#info=devDependencies)


## Introduction
Chapless Brunch is a skeleton for building web applications, specifically single-page applications. It is a modification of [Brunch with Chaplin](https://github.com/paulmillr/brunch-with-chaplin). This skeleton leverages [node](http://nodejs.org), [Brunch](http://brunch.io), [Scaffolt](https://github.com/paulmillr/scaffolt), [Bower](http://bower.io/), [Jake](https://github.com/mde/jake), and [PhantomJS](http://phantomjs.org/) to provide cross-platform tasks in a simple package. [LESS Hat](http://lesshat.com/) mixins are included. [EditorConfig](http://editorconfig.org/) is also provided to help with consistency. [Prerender](https://prerender.io/) can be easily enabled/configured for search engine crawling.

For a mobile/Cordova friendly variant, check out [this skeleton](https://github.com/jupl/chapless-brunch/tree/cordova).


## File Structure
    ├── app                     # App is built here. Look at Brunch for more info.
    │   ├── assets              # Static files that are just copied
    │   ├── controllers         # Chaplin controllers
    │   ├── lib                 # Chaplin utilities and helpers
    │   ├── models              # Chaplin models and collections
    │   ├── views               # Chaplin views and collection views
    │   ├── application.coffee  # Chaplin application definition
    │   ├── application.less    # Application/page styling definition
    │   ├── base.less           # LESS variables and mixins for the application
    │   ├── initialize.coffee   # Chaplin views and collection views
    │   └── routes.coffee       # Route definitions for Chaplin
    ├── bower_components        # Packages installed by Bower
    ├── generators              # Generators used by Scaffolt
    ├── jakelib                 # Unified set of tasks for development
    ├── public                  # Generated final product
    ├── server                  # Server configuration
    │   ├── prerender           # Configuration for Prerender server/middleware
    │   └── routes              # Custom routes/services/proxies/etc. (server-side)
    ├── setup                   # Add configuration options to brunch-config
    ├── test                    # Test-related files
    │   ├── assets              # Static assets to run code tests manually
    │   ├── code                # Code-based tests for Karma/manual
    │   ├── site                # Site-based tests for Mocha and WebDriverJS
    │   ├── karma.conf.js       # Karma configuration for code tests
    │   ├── mocha.opts          # Default options for site tests
    │   └── setup.js            # Configuration for site tests
    ├── vendor                  # 3rd party JS/CSS libraries
    ├── .editorconfig           # EditorConfig definition file for coding styles
    ├── bower.json              # Listing for Bower dependencies to download
    ├── brunch-config.js        # Brunch app build configuration
    └── package.json            # Project dependencies and configuration


## Requirements
- [node.js](http://nodejs.org)
- [Jake](https://github.com/mde/jake#installing-with-npm) (required for development)


## Setup
1. Install node.js.
2. If using Windows and leveraging Bower, install [Git](http://git-scm.com/download/win).
3. If doing development, install Jake.
4. Open a terminal window and navigate to the project directory.
5. Execute the command `npm install` to install all package dependencies.


## Notes
If you want to just run Brunch without using Jake tasks, just use either `web:dev` or `web:prod` for the environment. (ex: `brunch watch --server --env web:prod`)

One-line commands are provided for convenience as well for those that want to start running things as quickly as possible by installing depedencies automatically. Use `npm start` to download non-development packages and run the `server:prod` task. Use `npm test` to download all packages and run the `test:all` task.

Prerender is not enabled by default.
- To enable/disable Prerender see tasks `add:prerender`/`rem:prerender`.
- By default it is configured to use a local Prerender server that is set up.
- To modify the local Prerender server see `server/prerender/server.js`.
- To modify Prerender middleware see `server/prerender/index.js`.
- For more information visit their [website](https://prerender.io/).


## Task List
While Brunch/Scaffolt/etc. can be used, Jake commands are provided for a simple and consistent interface. These tasks can be executed using `jake`. (`jake [task]`) These are the following available tasks provided out of the box:


### NPM

#### `npm:clean`
Remove downloaded Node modules. This is useful if you want to reinstall dependencies. (ex. updated/corrupted package(s)) Remember that you need to call `npm install` to install dependencies.


### Bower

#### `bower:install`
Download and preinstall any Bower dependencies in advance. You can run this if you want to download Bower dependencies in advance.

#### `bower:clean`
Remove downloaded Bower dependencies. This is useful if you want to reinstall dependencies. (ex. updated/corrupted package(s))


### Extras
These commands add additional features/items to the project that are not included by default.

#### `add:testing` / `rem:testing`
Add/remove packages to test. See below for more details on code/site testing packages.

#### `add:codetesting` / `rem:codetesting`
Add/remove packages to test browser code. Packages include Mocha/Chai/Sinon/etc. for Bower and Karma-related packages for NPM.

#### `add:sitetesting` / `rem:sitetesting`
Add/remove packages to test site features. Packages include Mocha, Chai, WebDriverJS, etc. for NPM.

#### `add:prerender` / `rem:prerender`
Add/remove [Prerender](https://prerender.io/) to handle search crawling in JavaScript heavy applications. See the "Notes" section above for more information.

#### `add:jquery` / `rem:jquery`
Add/remove the ubiquitous library [jQuery](http://jquery.com/) to/from the project.

#### `add:normalize` / `rem:normalize`
Add/remove [normalize.css](http://necolas.github.io/normalize.css/) to ensure a consistent starting point in styling between different browsers.

#### `add:lodash` / `rem:lodash`
Add/remove [Lo-Dash](http://lodash.com/) to/from the project.

#### `add:rivets` / `rem:rivets`
Add/remove [Rivets.js](http://rivetsjs.com/) to/from the project for binding models and views. No additional configuration is needed if added. To reference a model from a view with rivets use the `model` object. To access model properties from Rivets by default use `:`. (ex: `model:name` equates to `model.get('name')`)

#### `add:exoskeleton` / `rem:exoskeleton`
Add/remove [Exoskeleton](http://exosjs.com/) to/from the project for a more lightweight Backbone. Note that this removes/restores [classic Backbone](http://backbonejs.org/), jQuery, and Lo-Dash. You can use other tasks to add/remove jQuery and Lo-Dash again.

#### `add:davy` / `rem:davy`
Add/remove [Davy](https://github.com/lvivski/davy) to/from the project for simple and lightweight Promise support. Add this if you are using Exoskeleton and want support for promises.


### Scaffolding
Scaffolding commands are available in the form of `gen` and `del`. (syntax ex: `jake gen codetest=user`) Multiple scaffolds can be specified in a single command, as well as separating names with commas. (ex: `jake gen codetest=test1,test2 sitetest=test3`) Unit test files are automatically generated for Chaplin items. For Chaplin views, a template and stylesheet is also provided in addition to the code file.

#### `gen` / `del`
List available scaffolds.

#### `gen model=[name]` / `del model=[name]`
Generate/destroy a Chaplin model.

#### `gen collection=[name]` / `del collection=[name]`
Generate/destroy a Chaplin collection. Generating a Chaplin collection will also generate its corresponding model. Specify the name in singular form, as collection will automatically be pluralized.

#### `gen view=[name]` / `del view=[name]`
Generate/destroy a Chaplin view.

#### `gen collectionview=[name]` / `del collectionview=[name]`
Generate/destroy a Chaplin collection view. Generating a Chaplin collection view will also generate the individual item view.

#### `gen controller=[name]` / `del controller=[name]`
Generate/destroy a [Chaplin controller](http://docs.chaplinjs.org/chaplin.controller.html).

#### `gen codetest=[name]` / `del codetest=[name]`
Generate/destroy a test file with the given test name for testing code. (ex: unit testing)

#### `gen sitetest=[name]` / `del sitetest=[name]`
Generate/destroy a test file with the given test name for testing the site. (ex: functional testing)


### Testing
To enable testing, required packages must be added. Use `add:testing`/`add:codetesting`/`add:sitetesting` tasks to install dependencies via Bower/npm. Tests leverage [Mocha](http://visionmedia.github.io/mocha/), [Mocha as Promised](https://github.com/domenic/mocha-as-promised), and [Chai](http://chaijs.com/). Code and site testing is provided. Code testing adds [Sinon](http://sinonjs.org/) and [Sinon-Chai](https://github.com/domenic/sinon-chai).

#### `test:all [codereporter=progress] [sitereporter=spec] [browsers=[browsers]]`
Run all tests listed below once. For more information on reporters see below.

#### `test:code [reporter=progress] [watch=false] [browsers=[browsers]]`
Run code-based tests (ex. unit tests) using Karma. Karma is preconfigured to run with [PhantomJS](http://phantomjs.org/). A Karma reporter can be specified with the `reporter` option. You can also override the browsers to run with with the `browsers` option. (ex: `browsers=Chrome,Firefox,Safari`) If you run this task with `watch=true` Karma will auto-run on file changes. Otherwise by default Karma runs once. You can also run the server while watching files with `watch=server`. In addition, if you run a build (see below) with the `dev` environment the tests are included with a reporter under `test` to run in browsers. (ex. visit `http://locahost:[port]/test`)

#### `test:site [reporter=spec] [watch=false]`
Run site-based tests (ex. system tests) using Mocha, PhantomJS, and WebDriverJS. A Brunch server is started up temporarily to interact with the site. A Mocha reporter can be specified with the `reporter` option. If you run this task with `watch=true` Mocha will auto-run on file changes with [nodemon](http://remy.github.io/nodemon/). Otherwise by default Mocha runs once. The global method `getDriver` is provided to get a setup and built driver. WebDriverJS' use of Promises can be combined with Mocha as Promised to handle asynchronous behavior easily. ex:

```coffeescript
describe 'Sample', ->

  before ->
    @driver = getDriver()

  it 'Has a proper title', ->
    @driver.get('http://localhost:3333').then =>
      @driver.getTitle()
    .then (title) ->
      expect(title).to.equal('Chapless Brunch')

  after ->
    @driver.quit()
```


### Building
These commands are used to assemble the application, generating the necessary JS/CSS and adding assets. Use `dev` mode to keep readable JS/CSS, plus include source maps as well as tests under the `test` folder. Use `prod` mode to minify/uglify JS/CSS as well as omit source maps and tests. If any Bower dependencies have not been downloaded yet, Bower will first download them.

#### `build:[mode]`
Assemble the application once.

#### `watch:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected.

#### `server:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected. Also, the application is served locally to open with a browser. [Prerender](https://prerender.io/) server and middleware is set up if available. This build uses the `web` environment.


## Libraries

### Core
- [Brunch Toolchain](https://github.com/jupl/brunch-toolchain) 0.8.1

### Languages
- [CoffeeScript](http://coffeescript.org/)
- [Eco](https://github.com/sstephenson/eco)
- [LESS](http://lesscss.org)

### Framework
- [Chaplin](http://chaplinjs.org)
- [Backbone](http://backbonejs.org)
- [Exoskeleton](http://exosjs.com/)

### Utilities
- [jQuery](http://jquery.com/)
- [LESS Hat](http://lesshat.com/)
- [Lo-Dash](http://lodash.com/)
- [Rivets.js](http://rivetsjs.com/)
- [Davy](https://github.com/lvivski/davy)
