app = angular.module 'app55', []

app.controller 'AppCtrl', ->
  @random = Math.random()

app.directive 'app', ->
  restrict: 'C'
  controller: 'AppCtrl as app'

$ ->
  # container55 because in prev example (no. 54) we bootstrap to container and container2
  angular.bootstrap(document.getElementById('container55'), ['app55'])
