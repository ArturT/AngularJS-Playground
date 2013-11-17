app = angular.module 'app63', []

app.service 'SmithService', ->
  getName: (name) ->
    "#{name} Smith"
