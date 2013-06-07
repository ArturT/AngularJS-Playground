app = angular.module 'app43', []

app.config ($logProvider) ->
  $logProvider.debugEnabled = false


app.run ($rootScope, $log) ->
  # give access to log anywhere inside of the html
  $rootScope.$log = $log

  #$log.debug '$log debug'
  $log.info '$log info'
  $log.warn '$log warn'
  $log.error '$log error'


app.controller 'AppCtrl', ($scope) ->
  $scope.myFunc = (ev) ->
    console.log 'myFunc'
    console.log ev
