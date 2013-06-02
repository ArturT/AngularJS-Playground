app = angular.module 'app28', []

# run is when the app downloading all the modules, and pretty much everything is ready for you to manipulate
app.run ($templateCache) ->
  console.log $templateCache.info() # size 0
  $templateCache.put 'zippy_put',
  """
  <div>
    <h3 ng-click="toggleContent()">{{title}}</h3>
    <div ng-show="isVisibleContent" ng-transclude></div>
  </div>
  """
  console.log $templateCache.info() # size 1


app.directive 'zippy', ($templateCache) ->
  console.log $templateCache.info() # size 2 (template added in run and inline template)
  console.log $templateCache.get('zippy.html')

  restrict: 'E'
  transclude: true
  scope:
    title: '@'
  #templateUrl: 'zippy.html'
  #template: $templateCache.get('zippy.html')
  templateUrl: 'zippy_put'
  link: (scope) ->
    scope.isVisibleContent = false

    scope.toggleContent = ->
      scope.isVisibleContent = !scope.isVisibleContent
