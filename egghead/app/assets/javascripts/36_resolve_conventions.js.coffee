app = angular.module 'app36', []

app.config ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: '/templates/app36'
      controller: 'AppCtrl'
      # The resolve property is a list of promises,
      # things that need to happen before controller
      # will instantiate and template will load
      # and everything will set up.
      resolve:
        loadData: appCtrl.loadData
        prepData: appCtrl.prepData


appCtrl = app.controller 'AppCtrl', ($scope, $route) ->
  console.log $route
  # loadData and prepData goes to locals
  console.log $route.current.locals
  $scope.model =
    message: "I'm a great app!"


appCtrl.loadData = ($q, $timeout) ->
  defer = $q.defer()
  console.log 'before resolve loadData'
  $timeout ->
    console.log 'resolve loadData'
    defer.resolve('loadData value')
  , 2000
  defer.promise


appCtrl.prepData = ($q, $timeout) ->
  defer = $q.defer()
  console.log 'before resolve prepData'
  $timeout ->
    console.log 'resolve prepData'
    defer.resolve('prepData value')
  , 2000
  defer.promise
