#!/usr/bin/env coffee
rails = require('./config/rails')
fs_watcher = require('./lib/fs_watcher')

rails.logger 'fs_watcher', (log) ->
  fs_watcher rails.config.STORAGE, log

# more to come ... as needed

console.log 'caps-support is supporting...'
