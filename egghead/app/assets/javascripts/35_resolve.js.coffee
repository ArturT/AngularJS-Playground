app = angular.module 'app35', []

app.config ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: '/templates/app35'
      controller: 'AppCtrl'
      # The resolve property is a list of promises,
      # things that need to happen before controller
      # will instantiate and template will load
      # and everything will set up.
      resolve:
        app: ($q, $timeout) ->
          defer = $q.defer()
          console.log 'before resolve'
          $timeout ->
            console.log 'resolve'
            defer.resolve()
          , 2000
          defer.promise


app.controller 'AppCtrl', ($scope) ->
  $scope.model =
    message: "I'm a great app!"
