app = angular.module 'phoneApp20', []

app.controller 'AppCtrl', ($scope) ->
  $scope.leaveVoicemail = (number, message) ->
    console.log("Number #{number} said: #{message}")

app.directive 'phone', ->
  restrict: 'E' # element
  scope:
    number: '@' # reading in an attribute
    network: '=' # bidirectional, two-way binding
    makeCall: '&' # make a call on something in the controller scope and invoke that within the inside of that scope
  template: '<div class="well">' +
            '<div>Number: {{number}} Network: <select ng-model="network" ng-options="network for network in networks"></select></div><br />' +
            '<input type="text" ng-model="value" /> ' +
            '<button class="btn" ng-click="makeCall({number: number, message: value})">Call home!</button>' +
            '</div>'
  link: (scope) ->
    scope.networks = ['Play', 'Orange', 'T-Mobile', 'Heyah']
    scope.network = scope.networks[1] # default second element "Orange"
