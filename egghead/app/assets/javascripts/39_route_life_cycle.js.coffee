app = angular.module 'app39', []

app.config ($routeProvider, $locationProvider) ->
  $routeProvider
    .when '/',
      templateUrl: '/templates/app39'
      controller: 'ViewCtrl'
    .when '/new',
      templateUrl: '/templates/new39'
      controller: 'NewCtrl'
      resolve:
        loadData: newCtrl.loadData


appCtrl = app.controller 'AppCtrl', ($scope, $rootScope, $route, $location) ->
  $rootScope.$on '$routeChangeStart', (event, current, previous) ->
    console.log '2. route change start'
    console.log $scope, $rootScope, $route, $location

  $rootScope.$on '$routeChangeSuccess', (event, current, previous) ->
    console.log '5. route change success'
    console.log $scope, $rootScope, $route, $location


viewCtrl = app.controller 'ViewCtrl', ($scope, $location) ->
  $scope.changeRoute = ->
    console.clear()
    console.log '1. change route'
    console.log $scope
    $location.path '/new'


newCtrl = app.controller 'NewCtrl', ($scope, loadData, $template) ->
  console.log '6. new ctrl loaded'
  $scope.message = loadData.message
  console.log $scope, loadData, $template


newCtrl.loadData = ($q, $timeout) ->
  defer = $q.defer()
  console.log '3. before resolve loadData'
  $timeout ->
    console.log '4. resolve loadData'
    defer.resolve({message: 'success'})
  , 1000
  defer.promise
