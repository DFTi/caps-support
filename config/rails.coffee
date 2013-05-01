fs = require('fs')
util = require('util')
path = require('path')
APP_ROOT = path.resolve('./..')
exports.root = APP_ROOT
exports.loggers = {}
logfilestream = require('logfilestream')
exports.logger = (name, cb) ->
  directory = "#{APP_ROOT}/log/#{name}"
  fs.mkdir directory, ->
    exports.loggers[name] ?= logfilestream
      logdir: directory,
      nameformat: "[#{name}.]YYYY-MM-DD[.log]"
    log = ->
      output = util.inspect arguments
      exports.loggers[name].write "#{output}\n\n"
    cb(log)

require('require-yaml')
exports.config = require("#{APP_ROOT}/config/application.yml")
