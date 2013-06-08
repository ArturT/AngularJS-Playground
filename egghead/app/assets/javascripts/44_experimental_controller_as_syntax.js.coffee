app = angular.module 'app44', []

app.controller 'RoomCtrl', ($scope) ->
  this.openDoor = ->
    console.log 'creak'

  this.foo = "Foo"

  $scope.closeDoor = ->
    console.log 'door closed'

  # old way to have access by prefix (see 22, 23 examples)
  # $scope.room = this


app.controller 'OtherCtrl', ->
  this.bar = "Bar"
