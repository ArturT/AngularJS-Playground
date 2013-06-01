app = angular.module 'app24', []

app.directive 'zippy', ->
  restrict: 'E'
  transclude: true
  scope:
    title: '@'
  template: '<div>
              <h3 ng-click="toggleContent()">{{title}}</h3>
              <div ng-show="isVisibleContent" ng-transclude></div>
            </div>'
  link: (scope) ->
    scope.isVisibleContent = false

    scope.toggleContent = ->
      scope.isVisibleContent = !scope.isVisibleContent
