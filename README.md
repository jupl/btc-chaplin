# Chapless Brunch 0.5.1

## Introduction
Chapless Brunch is a skeleton for building web applications, specifically single-page applications. It is a modification of Brunch with Chaplin. While [Brunch](http://brunch.io) can be used to run commands, tasks are also supplied via cake.


## Requirements
* [node.js](http://nodejs.org) (mandatory)
* [CoffeeScript](http://coffeescript.org/#installation) (optional via npm)


## Setup
1. Install node.js.
2. If you prefer using the cake command instead of npm run-script (see below) install CoffeeScript.
3. Download this skeleton.
4. Open a Terminal / Command Prompt and navigate to this directory where you downloaded the skeleton.
5. Execute the command `npm install` to install all package dependencies.


## Command List
While Brunch/Scaffolt commands can be used, cake commands are provided for this skeleton. These tasks can be executed using cake if it is installed. (`cake [command]`) If cake is not installed these commands can also be executed using npm. (`npm run-script [command]`) These are the following commands (this list is accessible using either the command `cake` or `npm start`):

### Extras
These commands add additional features/items to the project that are not included by default.

#### `add:bootstrap` / `rem:bootstrap`
Add/remove Bootstrap to the project. LESS-based files are provided for full customization. You do not need to run this command to leverage Bootstrap's variables and mixins.

#### `add:bootstrap:js` / `rem:bootstrap:js`
Add/remove Bootstrap JavaScript files to/from the project. These are essential for some [plugins](http://getbootstrap.com/javascript/) to work.

#### `add:rivets` / `rem:rivets`
Add/remove Rivets.js to the project for binding models and views. No additional configuration is needed if added.

#### `add:underscore:string` / `rem:underscore:string`
Add/remove Underscore.string to the project. The project will automatically mix in methods to Lo-Dash.

#### `add:fastclick` / `rem:fastclick`
Add/remove FastClick to/from the project for optimized click events in touch devices. Visit their [page](https://github.com/ftlabs/fastclick) for more information and instructions.

#### `add:hammer` / `add:hammer:jquery` / `rem:hammer`
Add/remove Hammer.js (standalone or jQuery plugin) to/from the project for touch event handling. Visit their [page](http://eightmedia.github.io/hammer.js/) for more information.

### Scaffolding
These commands allow one to generate and destroy Chaplin components.
* Test files are automatically generated for each of these items.
* For views, a template and stylesheet is also provided in addition to the code file.

#### `gen:model` / `del:model`
Generate/destroy a Chaplin model.

#### `gen:collection` / `del:collection` 
Generate/destroy a Chaplin collection. Generating a Chaplin collection will also generate its corresponding model. Specify the name in singular form, as collection will automatically be pluralized.

#### `gen:view` / `del:view`
Generate/destroy a Chaplin view.

#### `gen:view:collection` / `del:view:collection`
Generate/destroy a Chaplin collection view. Generating a Chaplin collection view will also generate the individual model item view.

#### `gen:controller` / `del:controller`
Generate/destroy a Chaplin controller.

#### `gen:test` / `del:test`
Generate/destroy a test file to be run using Mocha.

### Cordova
These commands are to set up and initialize native projects that use Cordova to wrap your web application in a native app. `[device]` denotes the application device to build under. (Currently supporting `ios` and `android`) If you need access to the Cordova JavaScript from your page use the script tag: `<script src="cordova.js"></script>`

#### `cordova:init`
Create a new Cordova project using [cordova-cli](https://github.com/apache/cordova-cli).
* When creating a project, you will be prompted for a package name and app name. (If anything is not provided, Cordova defaults will be used.)
* Project will reside in `build/cordova`.
* Cordova-specific files are added to `app/assets`. (These files will be ignored if a non-Cordova web build is made.) Do not remove these files.
* It is recommended for your web app to not depend on any files in `app/assets/res`.

#### `cordova:add:[device]`, `cordova:rem:[device]`
Add/remove specified device support to the Cordova project.

### Bower

#### `bower:install`
Download and preinstall any Bower dependencies in advance. You can run this if you want to download Bower dependencies in advance.

### Building
These commands are used to assemble the application, generating the necessary JS/CSS and adding assets.
* `[device]` denotes the device to build under using Cordova. (Currently supporting `ios` and `android`)
* `[mode]` Use `dev` mode to keep readable JS/CSS and include tests under the `test/` folder. Use `prod` mode to minify/uglify JS/CSS and omit tests.

#### `build:[mode]`, `build:[device]:[mode]`
Assemble the application once. If `device` is specified, then build for device using Cordova. Otherwise it uses the default web environment.

#### `watch:[mode]`.
Assemble the application and continue to watch for changes. Rebuild every time a change is detected.

#### `server:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected. Also, the application is served locally to open with a browser. This build uses the `web` environment.

#### `emulate:[device]:[mode]`
Assemble the application, compile, and deploy to an emulator for the specified device.

**NOTE**: [ios-sim](https://github.com/phonegap/ios-sim) is required to emulate on the iOS Simulator.

## Details

### Core
* [Brunch Toolchain](https://github.com/jupl/brunch-toolchain) 0.3.2
* [Cordova](http://cordova.apache.org) 2.6.0

### Languages
* [CoffeeScript](http://coffeescript.org) (includes [CoffeeLint](http://www.coffeelint.org))
* [Eco](https://github.com/sstephenson/eco)
* [LESS](http://lesscss.org)

### Framework
* [Chaplin](http://chaplinjs.org) 0.11.0
* [Backbone](http://backbonejs.org) 1.0.0

### Styling
* [Bootstrap](http://getbootstrap.com/) 3.0.0

### Extras
* [Rivets.js](http://rivetsjs.com/) 0.5.13
* [Underscore.string](http://epeli.github.io/underscore.string/) 2.3.3
* [FastClick](https://github.com/ftlabs/fastclick) 0.6.7
* [Hammer.js](http://eightmedia.github.io/hammer.js/) 1.0.5
