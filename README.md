# Chapless Brunch 0.6.0

[<img src="https://david-dm.org/jupl/chapless-brunch.png"/>](https://david-dm.org/jupl/chapless-brunch)
[<img src="https://david-dm.org/jupl/chapless-brunch/dev-status.png"/>](https://david-dm.org/jupl/chapless-brunch#info=devDependencies)


## Introduction
Chapless Brunch is a skeleton for building web applications, specifically single-page applications. It is a modification of [Brunch with Chaplin](https://github.com/paulmillr/brunch-with-chaplin). This skeleton leverages [node](http://nodejs.org), [Brunch](http://brunch.io), [Scaffolt](https://github.com/paulmillr/scaffolt), [Bower](http://bower.io/), [Jake](https://github.com/mde/jake), and [PhantomJS](http://phantomjs.org/) to provide cross-platform tasks in a simple package. [LESS Hat](http://lesshat.com/) mixins are included. [EditorConfig](http://editorconfig.org/) is also provided to help with consistency.


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
    ├── setup                   # Add configuration options to brunch-config
    ├── test                    # Test-related files
    │   ├── assets              # Static assets required for code tests
    │   ├── code                # Code and unit-based tests for Mocha PhantomJS
    │   ├── mocha.opts          # Default options for site tests
    │   ├── setup.js            # Configuration for site tests
    │   ├── site                # Site-based tests for Mocha
    │   └── vendor              # Test libraries for code-based tests
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
2. If doing development, install Jake.
4. Open a terminal window and navigate to the project directory.
5. Execute the command `npm install` to install all package dependencies.


## Notes
If you want to just run Brunch without using Jake tasks, just use either `web:dev` or `web:prod` for the environment. ex: `brunch watch --server --environment web:prod`

One-line commands are provided for convenience as well for those that want to start running things as quickly as possible by installing depedencies automatically. Use `npm start` to download non-development packages and run the `server:prod` task. Use `npm test` to download all packages and run the `test:all` task.


## Task List
While Brunch/Scaffolt/etc. can be used, Jake commands are provided for a simple and consistent interface. These tasks can be executed using `jake`. (`jake [task]`) These are the following available tasks provided out of the box:


### Bower

#### `bower:install`
Download and preinstall any Bower dependencies in advance. You can run this if you want to download Bower dependencies in advance.


### Extras
These commands add additional features/items to the project that are not included by default.

#### `add:jquery` / `rem:jquery`
Add/remove [jQuery](http://jquery.com/) to/from the project.

#### `add:lodash` / `rem:lodash`
Add/remove [Lo-Dash](http://lodash.com/) to/from the project.

#### `add:rivets` / `rem:rivets`
Add/remove [Rivets.js](http://rivetsjs.com/) to/from the project for binding models and views. No additional configuration is needed if added. To reference a model from a view with rivets use the `model` object. To access model properties from Rivets by default use `:`. (ex: `model:name` equates to `model.get('name')`)

#### `add:exoskeleton` / `rem:exoskeleton`
Add/remove [Exoskeleton](http://exosjs.com/) to/from the project for a more lightweight Backbone. Note that this removes/restores [classic Backbone](http://backbonejs.org/), jQuery, and Lo-Dash. You can use other tasks to add/remove jQuery and Lo-Dash again.

#### `add:davy` / `rem:davy`
Add/remove [Davy](https://github.com/lvivski/davy) to/from the project for simple and lightweight Promise support. Add this if you are using Exoskeleton and want support for promises.


### Scaffolding
- Unit test files are automatically generated for Chaplin items.
- For Chaplin views, a template and stylesheet is also provided in addition to the code file.

#### `gen:model name=[name]` / `del:model name=[name]`
Generate/destroy a Chaplin model.

#### `gen:collection name=[name]` / `del:collection name=[name]`
Generate/destroy a Chaplin collection. Generating a Chaplin collection will also generate its corresponding model. Specify the name in singular form, as collection will automatically be pluralized.

#### `gen:view name=[name]` / `del:view name=[name]`
Generate/destroy a Chaplin view.

#### `gen:collectionview name=[name]` / `del:collectionview name=[name]`
Generate/destroy a Chaplin collection view. Generating a Chaplin collection view will also generate the individual item view.

#### `gen:controller name=[name]` / `del:controller name=[name]`
Generate/destroy a Chaplin controller.

#### `gen:codetest name=[name]` / `del:codetest name=[name]`
Generate/destroy a test file with the given test name for testing code. (ex: unit testing)

#### `gen:sitetest name=[name]` / `del:sitetest name=[name]`
Generate/destroy a test file with the given test name for testing the site. (ex: functional testing)


### Testing
Temporarily spin up a local server with Brunch and run tests, leveraging [PhantomJS](http://phantomjs.org/), [Mocha](http://visionmedia.github.io/mocha/), and [Chai](http://chaijs.com/). Code and site testing is provided. Code testing adds [Sinon](http://sinonjs.org/) and [Sinon-Chai](https://github.com/domenic/sinon-chai), and runs through [mocha-phantomjs](http://metaskills.net/mocha-phantomjs/). Site testing uses [WebDriverJS](https://github.com/camme/webdriverjs).

#### `test:all [reporter=[reporter]]`
Run all tests listed below. Since Mocha is used, the reporter can be specified. (ex: `jake test:all reporter=min`) By default `spec` reporter is used.

#### `test:code [reporter=[reporter]]`
Run code-based tests (ex. unit tests) using mocha-phantomjs. In addition, if you run a build (see below) using `dev` the tests are included with a reporter under `test/` to run in browsers. (ex. visit `http://locahost:[port]/test`)

#### `test:site [reporter=[reporter]]`
Run site-based tests (ex. system tests) using PhantomJS and WebDriverJS. The global method `getDriver` is provided to get a setup and built driver. [Mocha as Promised](https://github.com/domenic/mocha-as-promised) is included to leverage WebDriverJS' use of Promises and handle asynchronous behavior easily. ex:

```js
describe('Sample', function() {
  var driver;

  before(function() {
    driver = getDriver();
  });

  it('Has a proper title', function() {
    return driver.get('http://localhost:3333').then(function() {
      return driver.getTitle();
    })
    .then(function(title) {
      expect(title).to.equal('Chapless Brunch');
    });
  });

  after(function() {
    driver.quit();
  });
});
```


### Building
These commands are used to assemble the application, generating the necessary JS/CSS and adding assets. Use `dev` mode to keep readable JS/CSS, plus include source maps as well as tests under the `test/` folder. Use `prod` mode to minify/uglify JS/CSS as well as omit source maps and tests. If any Bower dependencies have not been downloaded yet, Bower will first download them.

#### `build:[mode]`
Assemble the application once.

#### `watch:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected.

#### `server:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected. Also, the application is served locally to open with a browser. This build uses the `web` environment.


## Libraries

### Core
- [Brunch Toolchain](https://github.com/jupl/brunch-toolchain)

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
