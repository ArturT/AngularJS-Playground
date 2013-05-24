if window.location.href.match(/5_defining_a_method_on_the_scope/)
  myApp = angular.module 'myApp', []

  myApp.factory 'Data', ->
    message: "I'm data from a service"

  @FirstCtrl = ($scope, Data) ->
    $scope.data = Data

  @SecondCtrl = ($scope, Data) ->
    $scope.data = Data

    $scope.reversedMessage = (message) ->
      message.split('').reverse().join('')
