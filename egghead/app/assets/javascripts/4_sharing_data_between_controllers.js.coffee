if window.location.href.match(/4_sharing_data_between_controllers/)
  myApp = angular.module 'myApp', []

  myApp.factory 'Data', ->
    message: "I'm data from a service"
    second_message: "Second message"

  @FirstCtrl = ($scope, Data) ->
    $scope.data = Data

  @SecondCtrl = ($scope, Data) ->
    $scope.data = Data
