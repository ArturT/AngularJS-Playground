app = angular.module 'app53', ['ui.router']

app.config ($stateProvider, $urlRouterProvider) ->
  $stateProvider
    .state 'home',
      url: '/home'
      templateUrl: '/templates/53_home'
    .state 'list',
      url: '/list'
      templateUrl: '/templates/53_list'
      controller: 'ListCtrl'
    .state 'list.item',
      url: '/:item'
      templateUrl: '/templates/53_list.item'
      controller: ($scope, $stateParams) ->
        $scope.item = $stateParams.item

app.controller 'ListCtrl', ($scope) ->
  $scope.shoppingList = [
    {name: 'Milk'}
    {name: 'Eggs'}
    {name: 'Butter'}
    {name: 'Bread'}
    {name: 'Ham'}
  ]
