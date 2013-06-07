app = angular.module 'app42', []

# component
app.directive 'clock', ->
  restrict: 'E'
  scope:
    timezone: '@'
  template: '<span class="badge badge-info">12:00pm {{timezone}}</span>'


# container
app.directive 'panel', ->
  restrict: 'E'
  transclude: true
  scope:
    title: '@'
  template:
    """
    <div class="well">
      <h1>{{title}}</h1>
      <div ng-transclude></div>
    </div>
    """
