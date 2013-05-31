app = angular.module 'drinkApp18', []

app.controller 'AppCtrl', ($scope) ->
  $scope.ctrlFlavor = 'blackberry'


app.directive 'drink', ->
  scope:
    # two-way binding equal thing
    # whatever chagnes happen, update them
    flavor: '='
  template: '<input type="text" ng-model="flavor" />'
