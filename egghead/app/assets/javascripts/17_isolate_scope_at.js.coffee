app = angular.module 'drinkApp17', []

app.controller 'AppCtrl', ($scope) ->
  $scope.ctrlFlavor = 'Summer'


app.directive 'drink', ->
  #restrict: 'A' # default
  scope: {}
  template: '<div>{{flavor}}</div>'
  link: (scope, element, attrs) ->
    scope.flavor = attrs.flavor

app.directive 'food', ->
  scope:
    flavor: '@' # attribute, shortcut to do the same as in drink example
  template: '<div>{{flavor}}</div>'

app.directive 'season', ->
  scope:
    flavor: '@'
  template: '<div>{{flavor}}</div>'
