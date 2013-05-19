# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

@RafflerCtrl = ($scope) ->
  $scope.entries = [
    {name: 'Tom'}
    {name: 'Max'}
    {name: 'Mark'}
  ]

  $scope.addEntry = ->
    $scope.entries.push($scope.newEntry)
    $scope.newEntry = {}
