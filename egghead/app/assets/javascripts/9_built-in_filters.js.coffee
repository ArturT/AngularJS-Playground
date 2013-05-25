myApp = angular.module 'myApp9', []

myApp.factory 'Avengers', ->
  Avengers = {}
  Avengers.cast = [
    name: 'Robert Downey Jr.'
    character: 'Tony Stark / Iron Man'
  ,
    name: 'Chris Evans'
    character: 'Steve Rogers / Captain America'
  ,
    name: 'Mark Ruffalo'
    character: 'Bruce Banner / Hulk'
  ,
    name: 'Chris Hemsworth'
    character: 'Thor'
  ]
  Avengers

# keep controllers in array to avoid conflict in further examples
@ctrls9 = {}

@ctrls9.AvengersCtrl = ($scope, Avengers) ->
  $scope.avengers = Avengers
