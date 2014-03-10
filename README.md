# [BTC Chaplin](http://jupl.github.io/btc/chaplin/) 0.12.0
[![Dependency Status](https://gemnasium.com/jupl/btc-chaplin.png)](https://gemnasium.com/jupl/btc-chaplin)

This is a project template for [Chaplin](http://chaplinjs.org/) applications with [CoffeeScript](http://coffeescript.org/) and Cordova. Visit [the site](http://jupl.github.io/btc/chaplin) for more information.


## File Structure
    ├── app                     # Assets/code/styles for the client application
    │   ├── assets              # Static files copied without modification
    │   ├── controllers         # Chaplin controllers
    │   ├── models              # Chaplin models and collections
    │   ├── views               # Chaplin views and collection views
    │   ├── app.coffee          # Chaplin application definition
    │   ├── app.less            # Application/page styling definition
    │   ├── base.less           # LESS variables and mixins for the application
    │   ├── initialize.coffee   # Chaplin views and collection views
    │   ├── routes.coffee       # Route definitions for Chaplin
    │   └── utils.coffee        # Utilities and helpers
    ├── cordova                 # Cordova project
    ├── generators              # Generators used by Scaffolt
    ├── jakelib                 # Unified set of tasks for development
    ├── public                  # Compiled client-side assets
    ├── server                  # Server configuration
    │   ├── browser-sync.js     # BrowserSync proxy setup
    │   └── index.js            # Starting point of server setup
    ├── test                    # Test-related files
    │   ├── code                # Code tests that run with Karma
    │   ├── site                # Site tests that run with WebDriverJS
    │   ├── mocha.opts          # Default options for site testing
    │   └── setup.js            # Initialization for site testing
    ├── vendor                  # Additional 3rd party JS/CSS libraries
    ├── .editorconfig           # EditorConfig definitions for coding styles
    ├── bower.json              # Listing for Bower dependencies to download
    ├── brunch-config.js        # Brunch app build configuration
    ├── karma.conf.js           # Karma runner setup
    └── package.json            # Node project dependencies and configuration


## Setup
1. Download and install the following if you have not already:
  - [Node.js](http://nodejs.org/download/)
  - [Git](http://git-scm.com/downloads)
  - [Jake](https://github.com/mde/jake#installing-with-npm) (if developing)
  - [Platform SDKs](https://github.com/apache/cordova-cli#requirements)
2. Download one of the starter projects from GitHub.
3. Navigate to the project directory and run the command `npm install`.


## Notes

### `npm test`
One-line commands are provided for convenience as well for those that want to start running things as quickly as possible by installing depedencies automatically. Use `npm test` to download all packages and run both the `test:install` and `test:all` tasks.


## Libraries

### Core
- [BTC Chaplin](https://github.com/jupl/btc-chaplin) 0.12.0
- [BTC Cordova](https://github.com/jupl/btc-cordova) 0.10.4
