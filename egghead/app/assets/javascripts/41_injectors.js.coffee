app = angular.module 'app41', []

app.factory 'game', ->
  title: 'Limbo'

app.factory 'game2', ->
  title: 'The Walking Dead'


# invoke game from module app41
angular.injector(['app41']).invoke (game) ->
  # it happens on each page which loads the script 41_injectors.js.coffee
  #console.log game


app.controller 'AppCtrl', ($scope, game, $injector) ->
  $scope.title = game.title

  # injector provides invoke method to pass provider (game2) into function
  $injector.invoke (game2) ->
    $scope.title2 = game2.title
