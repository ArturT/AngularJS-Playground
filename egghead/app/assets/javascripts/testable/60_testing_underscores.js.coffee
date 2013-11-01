app = angular.module 'app60', []

app.directive 'ehSimple', ->
  scope: {} # isolated scope
  link: (scope, element) ->
    element.addClass('plain')
    element.bind 'click', ->
      scope.clicked = true
