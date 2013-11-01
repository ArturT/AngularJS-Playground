# AngularJS injectors understand aliased for core injectables such as $rootScope
# in unit tests. If you surround your injected object with underscores _$rootScope_
# it will be understood and injected into your test by Angular. This allows you
# to use a local alias of the same name.
#
# http://egghead.io/lessons/angularjs-testing-underscores

describe 'Hellow World', ->
  $scope = undefined
  element = undefined
  $compile = undefined
  $rootScope = undefined

  beforeEach module('app60')
  beforeEach inject (_$compile_, _$rootScope_) ->
    $compile = _$compile_
    $rootScope = _$rootScope_
    $scope = _$rootScope_

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
