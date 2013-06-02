app = angular.module 'app25', []

app.directive 'dumbPassword', ->
  restrict: 'E'
  scope: {}
  replace: true
  template: """
            <div>
              <input type="text" ng-model="model.input" />
              <div>{{model.input}}</div>
            </div>
            """
  link: (scope, element) ->
    scope.$watch 'model.input', (value) ->
      if value == 'password'
        console.log 'change it'
        # ugly approach
        element.children(1).toggleClass('alert alert-error')


app.directive 'password', ->
  validElement = angular.element '<div>{{model.input}}</div>'

  link = (scope, element) ->
    scope.$watch 'model.input', (value) ->
      if value == 'password'
        console.log 'change it'
        # reference to validElement
        validElement.toggleClass('alert alert-success')

  restrict: 'E'
  scope: {}
  replace: true
  template: """
            <div>
              <input type="text" ng-model="model.input" />
            </div>
            """
  compile: (tElem) ->
    # append validElement to template element
    tElem.append validElement
    # return link function
    link
