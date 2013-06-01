app = angular.module 'phoneApp21', []

app.controller 'AppCtrl', ($scope) ->

app.directive 'panel', ->
  restrict: 'E'
  template: '<div class="well">This is a panel component</div>'

app.directive 'panelTransclude', ->
  restrict: 'E'
  transclude: true
  template: '<div class="well" ng-transclude>This is a panel component with transclusion</div>'

app.directive 'secondPanelTransclude', ->
  restrict: 'E'
  transclude: true
  template: '<div class="well">
              This is a second panel component with transclusion
              <div class="alert" ng-transclude>
                Alert with appended content
              </div>
              Another text
            </div>'
