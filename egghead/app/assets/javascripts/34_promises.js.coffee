app = angular.module 'app34', []

app.config ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: '/templates/app34'
      controller: 'AppCtrl'

# q is a promised library
app.controller 'AppCtrl', ($scope, $q) ->
  defer = $q.defer()

  defer.promise.then (weapon) ->
    alert "You can have my #{weapon}" # sword goes here
    'bow'
  .then (weapon) ->
    alert "And my #{weapon}" # bow goes here
    'axe'
  .then (weapon) ->
    alert "And even my #{weapon}" # axe goes here

  defer.resolve('sword')

  $scope.model =
    message: 'This is my app!'
