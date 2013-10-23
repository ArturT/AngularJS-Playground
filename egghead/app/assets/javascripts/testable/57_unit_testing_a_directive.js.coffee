app = angular.module 'app57', []

app.directive 'ehSimple', ->
  (scope, element) ->
    element.addClass('plain')
