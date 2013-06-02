app = angular.module 'app26', []

# order is not important
# looking up for providers (naming does matter)
app.controller 'FirstCtrl', ($scope, $http, $parse) ->
  console.log 'FirstCtrl'
  console.log $scope
  console.log $http
  console.log $parse

# angular things are injected
# protect against minification because
# when you minify things it rename function arguments
app.controller 'SecondCtrl', ['$scope', '$http', (scope, http) ->
  console.log 'SecondCtrl'
  console.log scope
  console.log http
]


app.directive 'firstDirective', ->
  # order is important
  # naming doesn't matter
  link: (scope, element, attrs) ->
    console.log 'firstDirective'
    console.log scope
