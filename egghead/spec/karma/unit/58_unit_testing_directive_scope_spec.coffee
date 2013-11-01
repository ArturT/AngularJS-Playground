describe 'Hellow World', ->
  $scope = undefined
  element = undefined

  beforeEach module('app58')
  beforeEach inject ($compile, $rootScope) ->
    $scope = $rootScope
    element = angular.element "<div eh-simple>{{2 + 2}}</div>"
    element = $compile(element)($rootScope)

  it 'should equal 4', ->
    $scope.$digest()
    expect(element.html()).toBe '4'

  describe 'ehSimple', ->
    it 'should add a class of plain', ->
      expect(element.hasClass('plain')).toBe(true)

    it 'should respond to a click', ->
      element.triggerHandler('click')

      # undefined because of isolated scope
      expect(element.clicked).toBe(undefined)

      # check directive's scope
      expect(element.scope().clicked).toBe(true)
