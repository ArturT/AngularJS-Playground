app = angular.module 'app49', ['ngAnimate']

app.controller 'AppCtrl', ->
  toggle: true

app.animation '.toggle', ->
  leave: (element, done) ->
    # http://www.greensock.com/as/docs/tween/com/greensock/TweenMax.html#fromTo()
    TweenMax.fromTo(element, 1, {opacity: 1}, {opacity: 0, onComplete: done()})
  enter: (element, done) ->
    TweenMax.fromTo(element, 1, {opacity: 0}, {opacity: 1, onComplete: done()})
