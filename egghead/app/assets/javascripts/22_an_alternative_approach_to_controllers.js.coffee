app = angular.module 'phoneApp22', []

app.controller 'AppCtrl', ($scope) ->
  $scope.AppCtrl = this

  # assign to the scope
  $scope.sayHi = ->
    console.log('Hi!')

  # assign to the controller itself
  this.sayHiAgain = ->
    console.log('Hi again!')
