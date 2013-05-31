app = angular.module 'phoneApp19', []

app.controller 'AppCtrl', ($scope) ->
  $scope.callHome = (message) ->
    console.log('Called home with message: ' + message)


app.directive 'phone', ->
  scope:
    # communicating back and forth without doing any sort of explicit binding
    dial: '&'
  template: '<p><input type="text" ng-model="value" /> ' +
            '<button class="btn" ng-click="dial({message:value})">Call home!</button><p>'
