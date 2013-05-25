#= require 7_testing_overview

describe 'filter', ->
  beforeEach module('myApp')

  describe 'reverse', ->
    it 'should reverse a string', inject (reverseFilter) ->
      expect(reverseFilter('ABCD')).toEqual('DCBA')
      expect(reverseFilter('Jasmine')).toEqual('enimsaJ')

