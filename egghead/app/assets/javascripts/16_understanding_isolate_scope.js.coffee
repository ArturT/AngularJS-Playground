app = angular.module 'choreApp16', []

app.controller 'ChoreCtrl', ($scope) ->
  $scope.logChore = (chore) ->
    console.log(chore + ' is done!')

app.directive 'kid', ->
  restrict: 'E'
  scope:
    done: '&' # done is really mapped to whatever you pass into this done attribute
  template: '<input type="text" ng-model="chore" /> ' +
            '{{chore}} ' +
            '<button class="btn" ng-click="done({chore:chore})">done</button>' # invoke done in scope of kid
