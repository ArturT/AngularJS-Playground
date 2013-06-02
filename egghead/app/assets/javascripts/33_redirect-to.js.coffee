app = angular.module 'app33', []

app.config ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: '/templates/app33'
      controller: 'AppCtrl'
    .when '/pizza/:crust/:toppings',
      redirectTo: (routeParams, path, search) ->
        console.log routeParams
        console.log path
        console.log search # all params after sign ? in url
        "/#{routeParams.crust}"
    .when '/deep',
      template: 'Deep dish'
    .otherwise
      redirectTo: '/'

app.controller 'AppCtrl', ($scope) ->
  $scope.model =
    message: 'This is my app!'
