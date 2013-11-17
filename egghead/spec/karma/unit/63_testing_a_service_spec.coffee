describe 'Hello world', ->
  SmithServie = undefined

  beforeEach module('app63')
  beforeEach inject (_SmithService_)->
    SmithServie = _SmithService_

  describe 'SmithServie', ->
    it 'should append Smith to a name', ->
      expect(SmithServie.getName('John')).toBe('John Smith')
