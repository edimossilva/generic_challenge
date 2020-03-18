var app = angular.module("test", []);

app.controller("TreeCtrl", function ($scope, $http) {

  $scope.print = function (data) {
    console.log(data)
  }

  $http.get("/data").then(function (response) {
    $scope.data = response.data;
    $scope.print($scope.data)
  });


});
