'use strict'

fs = require('fs')
path = require('path')

module.exports = (port, publicPath) ->
  paths = [
    path.join(publicPath, '**/*')
    '!**/*.{appcache,map}'
  ]

  # Wait until public path is available
  id = setInterval ->
    if fs.existsSync(publicPath)
      clearInterval(id)
      require('browser-sync').init paths,
        proxy:
          host: '0.0.0.0'
          port: port
  , 500

  return
