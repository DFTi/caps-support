#!/usr/bin/env coffee
watch = require('watch')
module.exports = (path, log) ->
  watch.createMonitor path, (monitor) ->
    monitor.on 'created', (f, stat) ->
      log 'created', f, stat

    monitor.on 'changed', (f, curr, prev) ->
      log 'changed', f, curr, prev

    monitor.on 'removed', (f, stat) ->
      log 'removed', f, stat

  log "Began monitoring #{path}"