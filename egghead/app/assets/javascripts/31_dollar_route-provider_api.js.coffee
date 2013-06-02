app = angular.module 'app31', []

app.config ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: '/templates/app31'
      controller: 'AppCtrl'
    .when '/pizza',
      template: 'Yum!!'
    .otherwise
      template: "This doesn't exist!"

app.controller 'AppCtrl', ($scope) ->
  $scope.model =
    message: 'This is my app!'
