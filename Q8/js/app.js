var app = angular.module("test", []);

app.controller("TreeCtrl", function($scope, $http) {
  $http.get("/data").then(function(response) {
    $scope.data = response.data;
  });
});
