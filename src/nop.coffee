#
# hubot nop adapter
#
try
  {Robot,Adapter} = require 'hubot'
catch
  prequire = require('parent-require')
  {Robot,Adapter} = prequire 'hubot'

class NoOperation extends Adapter
  run: ->
    @emit "connected"

exports.use = (robot) ->
  new NoOperation robot
