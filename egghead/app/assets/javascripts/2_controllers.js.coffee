if window.location.href.match(/2_controllers/)
  @FirstCtrl = ($scope) ->
    $scope.data =
      message: "Hello"
      class: "label"
