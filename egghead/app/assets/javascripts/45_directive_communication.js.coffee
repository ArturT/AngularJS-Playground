app = angular.module 'app45', []

app.directive 'country', ->
  restrict: 'E'
  controller: ->
    this.makeAnnouncement = (message) ->
      console.log "Country says: #{message}"

app.directive 'state', ->
  restrict: 'E'
  require: '^country'
  controller: ->
    this.makeLaw = (law) ->
      console.log "Law: #{law}"
  link: (scope, element, attrs, countryCtrl) ->
    countryCtrl.makeAnnouncement('from state')

app.directive 'city', ->
  restrict: 'E'
  require: ['^country', '^state']
  link: (scope, element, attrs, ctrls) ->
    ctrls[0].makeAnnouncement('from city')
    ctrls[1].makeLaw('Jump higher')
