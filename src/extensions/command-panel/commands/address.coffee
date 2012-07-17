Command = require 'command-panel/commands/command'
Operation = require 'command-panel/operation'

module.exports =
class Address extends Command
  compile: (project, buffer, ranges) ->
    ranges.map (range) =>
      new Operation(buffer: buffer, bufferRange: @getRange(buffer, range))

  isAddress: -> true
