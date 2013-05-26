app = angular.module 'superhero15', []

app.directive 'superhero', ->
  restrict: 'E'
  scope: {} # keep the scope inside the superhero, don't share it across, don't inherit from other scopes

  controller: ($scope) ->
    $scope.abilities = []

    this.addStrength = ->
      $scope.abilities.push 'strength'

    this.addSpeed = ->
      $scope.abilities.push 'speed'

    this.addFlight = ->
      $scope.abilities.push 'flight'

  link: (scope, element) ->
    element.addClass('btn')
    element.bind 'mouseenter', ->
      console.log scope.abilities


app.directive 'strength', ->
  require: 'superhero'
  link: (scope, element, attrs, superheroCtrl) ->
    superheroCtrl.addStrength()

app.directive 'speed', ->
  require: 'superhero'
  link: (scope, element, attrs, superheroCtrl) ->
    superheroCtrl.addSpeed()

app.directive 'flight', ->
  require: 'superhero'
  link: (scope, element, attrs, superheroCtrl) ->
    superheroCtrl.addFlight()
