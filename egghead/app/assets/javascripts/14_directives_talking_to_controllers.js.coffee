app = angular.module 'twitterApp14', []

app.controller 'AppCtrl', ($scope) ->
  $scope.loadMoreTweets = ->
    console.log "loading tweets"

  $scope.deleteTweets = ->
    console.log "deleting tweets"

app.directive 'enter', ->
  (scope, element, attrs) ->
    element.bind 'mouseenter', ->
      scope.$apply(attrs.enter)
