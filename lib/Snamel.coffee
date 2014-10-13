## -- Dependencies ------------------------------------------------------

changeCase = require 'change-case'

## -- Class -------------------------------------------------------------

class Snamel

  @convert: (options) ->

    if options.is?
      condition = "is#{changeCase.upperCaseFirst(options.is)}"
      return changeCase[condition](options.data)

    if typeof options.data is 'object'
      newObject = {}
      keys = Object.keys(options.data)
      for key in keys
        newObject[changeCase[options.to](key)] = options.data[key]
      return newObject

    changeCase[options.to](options.data)

## -- Exports -----------------------------------------------------------

exports = module.exports = Snamel
