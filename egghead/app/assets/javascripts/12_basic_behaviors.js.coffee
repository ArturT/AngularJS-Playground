app = angular.module 'behaviorApp12', []

app.directive 'enter', ->
  restrict: 'A'
  link: (scope, element) ->
    element.bind 'mouseenter', ->
      console.log "I'm inside of you!"

app.directive 'leave', ->
  restrict: 'A'
  link: (scope, element) ->
    element.bind 'mouseleave', ->
      console.log "I'm leaving you!"

# same as above but shorthand
app.directive 'simplerenter', ->
  (scope, element) ->
    element.bind 'mouseenter', ->
      console.log "Hey, I'm inside of you!"

app.directive 'simplerleave', ->
  (scope, element) ->
    element.bind 'mouseleave', ->
      console.log "Hey, I'm leaving you!"
