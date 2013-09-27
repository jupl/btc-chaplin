# Chapless Brunch 0.5.0

## Introduction
Chapless Brunch is a skeleton for building web applications, specifically single-page applications. It is a modification of Brunch with Chaplin. While [Brunch](http://brunch.io) can be used to run commands, tasks are also supplied via cake.


## Requirements
* [node.js](http://nodejs.org) (mandatory)
* [CoffeeScript](http://coffeescript.org/#installation) (recommended via npm)


## Setup
1. Install node.js.
2. While not mandatory, it is recommended to install CoffeeScript.
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

### Bower

#### `bower:install`
Download and preinstall any Bower dependencies in advance. You can run this if you want to download Bower dependencies in advance.

### Building
These commands are used to assemble the application, generating the necessary JS/CSS and adding assets. Use `dev` mode to keep readable JS/CSS, plus include source maps as well as tests under the `test/` folder. Use `prod` mode to minify/uglify JS/CSS as well as omit source maps and tests. If any Bower dependencies have not been downloaded yet, Bower will first download them.

#### `build:[mode]`
Assemble the application once.

#### `watch:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected.

#### `server:[mode]`
Assemble the application and continue to watch for changes. Rebuild every time a change is detected. Also, the application is served locally to open with a browser. This build uses the `web` environment.

## Details

### Core
* [Brunch Toolchain](https://github.com/jupl/brunch-toolchain) 0.3.1

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
* [Auto-Reload Brunch](https://github.com/brunch/auto-reload-brunch)
