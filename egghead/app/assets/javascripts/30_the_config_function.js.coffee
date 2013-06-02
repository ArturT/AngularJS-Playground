app = angular.module 'app30', []

app.config ($routeProvider) ->
  $routeProvider.when '/',
    templateUrl: '/templates/app30'
    controller: 'AppCtrl'

app.controller 'AppCtrl', ($scope, $route) ->
  # $route is provider
  console.log $route
  # You can't define route in a controller or in a service and
  # expect it to do anything, because the configuration needs to
  # happen before you inject it into anything you want to use it in.
  console.log $route.routes['/']

  $scope.model =
    message: 'This is my app!'
