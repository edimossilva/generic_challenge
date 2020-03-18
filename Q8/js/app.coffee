app = angular.module "test", []

app.controller "TreeCtrl", ($scope, $http) ->
  $http.get "/data"
    .then (response) -> $scope.data = response.data
