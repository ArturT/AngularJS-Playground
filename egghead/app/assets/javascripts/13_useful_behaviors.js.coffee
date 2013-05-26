app = angular.module 'behaviorApp13', []

app.directive 'enter', ->
  (scope, element, attrs) ->
    element.bind 'mouseenter', ->
      element.addClass attrs.enter

app.directive 'leave', ->
  (scope, element, attrs) ->
    element.bind 'mouseleave', ->
      element.removeClass attrs.enter
