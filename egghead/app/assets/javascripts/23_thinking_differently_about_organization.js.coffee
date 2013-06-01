app = angular.module 'phoneApp23', []

phoneAppStuff = {}

phoneAppStuff.controllers = {}

phoneAppStuff.controllers.AppCtrl = ($scope) ->
  $scope.AppCtrl = this

  # assign to the scope
  $scope.sayHi = ->
    console.log('Hi!')

  # assign to the controller itself
  this.sayHiAgain = ->
    console.log('Hi again!')


phoneAppStuff.directives = {}

phoneAppStuff.directives.success = ->
  restrict: 'E'
  transclude: true
  template: '<div class="alert alert-success" ng-transclude></div>'


app.controller phoneAppStuff.controllers
app.directive phoneAppStuff.directives
