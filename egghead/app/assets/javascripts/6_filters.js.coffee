if window.location.href.match(/6_filters/)
  myApp = angular.module 'myApp', []

  myApp.factory 'Data', ->
    message: "I'm data from a service"

  myApp.filter 'reverse', (Data) ->
    (text) ->
      text.split('').reverse().join('') + Data.message

  @FirstCtrl = ($scope, Data) ->
    $scope.data = Data

  @SecondCtrl = ($scope, Data) ->
    $scope.data = Data

    $scope.reversedMessage = (message) ->
      message.split('').reverse().join('')
