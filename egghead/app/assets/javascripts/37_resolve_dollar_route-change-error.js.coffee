app = angular.module 'app37', []

app.config ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: '/templates/app37'
      controller: 'ViewCtrl'
      resolve:
        loadData: viewCtrl.loadData


appCtrl = app.controller 'AppCtrl', ($rootScope) ->
  $rootScope.$on '$routeChangeError', (event, current, previous, rejection) ->
    console.log "event:"
    console.log event
    console.log "current:"
    console.log current
    console.log "previous:"
    console.log previous
    console.log "rejection:"
    console.log rejection


viewCtrl = app.controller 'ViewCtrl', ($scope) ->
  $scope.model =
    message: "I'm a great app!"


viewCtrl.loadData = ($q, $timeout) ->
  defer = $q.defer()
  console.log 'before resolve loadData'
  $timeout ->
    console.log 'reject loadData'
    defer.reject('reject loadData value')
  , 1000
  defer.promise
