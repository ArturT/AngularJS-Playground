app = angular.module 'app29', []

app.config ($routeProvider) ->
  $routeProvider.when '/',
    templateUrl: '/templates/app29'
    controller: 'AppCtrl'

app.controller 'AppCtrl', ($scope) ->
  $scope.model =
    message: 'This is my app!'
