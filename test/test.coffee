## -- Dependencies -------------------------------------------------------------

snamel = require '..'
should = require 'should'

## -- Tests -------------------------------------------------------------

obj1 = hello_world: 'hello world'
obj2 = helloWorld: 'hello world'
obj3 = HelloWorld: 'hello world'

str1 = 'hello'
str2 = 'HELLO'

describe 'Snamel ::', ->

  it 'convert camelCase into snake_case', ->
    snamel(data: obj2,  to:'snakeCase').should.eql obj1

  it 'convert snake_case into camelCase', ->
    snamel(data: obj1,  to:'camelCase').should.eql obj2

  it 'convert lowerCase into upperCase', ->
     snamel(data: str1,  to:'upperCase').should.eql str2

  it 'convert upperCase into lowerCase', ->
     snamel(data: str2,  to:'lowerCase').should.eql str1

  it 'check if is lowerCase', ->
    snamel(data: str1,  is:'lowerCase').should.eql true

  it 'check if is upperCase', ->
    snamel(data: str2, is:'upperCase').should.eql true

