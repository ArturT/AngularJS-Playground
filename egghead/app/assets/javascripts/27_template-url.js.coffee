app = angular.module 'app27', []

app.directive 'zippy', ->
  restrict: 'E'
  transclude: true
  scope:
    title: '@'
  #templateUrl: 'zippy.html' # load zippy.html from inline template
  templateUrl: '/templates/zippy27'
  link: (scope) ->
    scope.isVisibleContent = false

    scope.toggleContent = ->
      scope.isVisibleContent = !scope.isVisibleContent
