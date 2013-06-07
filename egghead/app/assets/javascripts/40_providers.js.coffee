app = angular.module 'app40', []

# factory is a shortcut for provider
app.factory 'game1', ->
  title: "Call of Duty 1 (from factory defined on app)"


app.provider 'game4', ->
    gameType = null
    setGameType: (value) ->
      gameType = value
    $get: ->
      title: "Call of Duty 4 (from provider defined on app) game type: #{gameType}"


app.config ($provide, game4Provider) ->
  console.log $provide
  # add factory to $provide
  $provide.factory 'game2', ->
    title: "Call of Duty 2 (from factory added to $provide)"

  # provider is more general than factory
  $provide.provider 'game3', ->
    $get: ->
      title: 'Call of Duty 3 (from provider added to $provide)'

  # configure provider
  game4Provider.setGameType 'FPP'


app.controller 'AppCtrl', ($scope, game1, game2, game3, game4) ->
  $scope.title1 = game1.title
  $scope.title2 = game2.title
  $scope.title3 = game3.title
  $scope.title4 = game4.title
