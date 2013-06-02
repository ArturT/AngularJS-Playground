app = angular.module 'app32', []

app.config ($routeProvider) ->
  $routeProvider
    .when '/:country/:state/:city',
      templateUrl: '/templates/app32'
      controller: 'AppCtrl'

app.controller 'AppCtrl', ($scope, $routeParams) ->
  $scope.model =
    message: "Address: #{$routeParams.country}, #{$routeParams.state}, #{$routeParams.city}"
