app = angular.module 'app59', []

app.directive 'ehSimple', ->
  scope:
    ehSimple: '=' # two way data binding
  link: (scope, element) ->
    element.addClass('plain')
    element.bind 'click', ->
      scope.clicked = true
      scope.ehSimple.message += ' world'
