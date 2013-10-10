app = angular.module 'app54', []

app.run ($rootScope) ->
  $rootScope.random = Math.random()

$ ->
  # This will work if you have your scripts loaded at the end of the page or loaded after document ready
  angular.bootstrap(document.getElementById('container'), ['app54'])
  angular.bootstrap(document.getElementById('container2'), ['app54'])
