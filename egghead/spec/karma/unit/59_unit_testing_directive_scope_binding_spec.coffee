describe 'Hellow World', ->
  $scope = undefined
  element = undefined

  beforeEach module('app59')
  beforeEach inject ($compile, $rootScope) ->
    $scope = $rootScope
    $scope.data =
      message: 'Hello'
    element = angular.element """<div eh-simple="data">{{2 + 2}}</div>"""
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

    it 'should update both scopes on click', ->
      element.triggerHandler('click')
      expect(element.scope().ehSimple.message).toBe("Hello world")
      expect($scope.data.message).toBe("Hello world")
