#
# hubot nop adapter
#
try
  {Robot,Adapter} = require 'hubot'
catch
  prequire = require('parent-require')
  {Robot,Adapter} = prequire 'hubot'

class Null extends Adapter
  run: ->
    @emit "connected"

exports.use = (robot) ->
  new Null robot
