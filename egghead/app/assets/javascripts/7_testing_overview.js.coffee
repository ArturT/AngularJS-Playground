if window.location.href.match(/7_testing_overview/) or jasmine?
  myApp = angular.module 'myApp', []

  myApp.factory 'Data', ->
    message: "I'm data from a service"

  myApp.filter 'reverse', ->
    (text) ->
      text.split('').reverse().join('')

  @FirstCtrl = ($scope, Data) ->
    $scope.data = Data

  @SecondCtrl = ($scope, Data) ->
    $scope.data = Data

    $scope.reversedMessage = (message) ->
      message.split('').reverse().join('')
