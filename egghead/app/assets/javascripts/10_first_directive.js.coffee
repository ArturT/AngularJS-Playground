app = angular.module 'superhero10', []

app.directive 'superman', ->
  restrict: "E"
  template: "<div>Here I am to save the day</div>"


