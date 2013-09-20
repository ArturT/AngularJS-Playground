app = angular.module 'app50', ['ngAnimate']

app.controller 'AppCtrl', ->
  @isHidden = false

  @fadeIt = ->
    @isHidden = !@isHidden

app.directive 'hideMe', ($animate) ->
  (scope, element, attrs) ->
    scope.$watch attrs.hideMe, (newValue) ->
      if newValue
        $animate.addClass(element, 'fade')
      else
        $animate.removeClass(element, 'fade')

app.animation '.fade', ->
  addClass: (element, className) ->
    TweenMax.to(element, 1, {opacity: 0})
  removeClass: (element, className) ->
    TweenMax.to(element, 1, {opacity: 1})
