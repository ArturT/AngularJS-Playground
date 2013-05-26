app = angular.module 'superhero11', []

# elements
app.directive 'superman', ->
  restrict: "E"
  template: "<div>Here I am to save the day</div>"


# attributes
app.directive 'fly', ->
  restrict: "A"
  link: ->
    console.log "I'm flying"

app.directive 'power', ->
  restrict: 'A'
  link: ->
    console.log "I have a super power"


# classes
app.directive 'superfast', ->
  restrict: "C"
  link: ->
    console.log "I'm superfast"

app.directive 'superstrong', ->
  restrict: "C"
  link: ->
    console.log "I'm superstrong"


# comments
app.directive 'announcement', ->
  restrict: "M"
  link: ->
    console.log "He is coming"

app.directive 'acknowledgements', ->
  restrict: "M"
  link: ->
    console.log "Thanks for help"
