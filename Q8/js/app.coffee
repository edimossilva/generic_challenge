app = angular.module "test", []

app.controller "TreeCtrl", ($scope, $http) ->

  nodeStringToNode = (nodeString) ->
    nodeProperties = nodeString.split(',')
    return {
      id: nodeProperties[0],
      name: nodeProperties[1],
      parentId: nodeProperties[2]
    } 

  isChild = ({parentId}, expectedParentId) -> 
    return parentId == expectedParentId

  convertToNode = (data) ->
    nodes_strings = data.split('\n')
    $scope.nodes = nodes_strings.map(nodeStringToNode)
    $scope.rootNodes = $scope.nodes.filter((node) -> isChild(node,''))

  $http.get "/data"
    .then (response) -> 
      convertToNode(response.data)

  $scope.getChildNodes = ({id}) ->
    return $scope.nodes.filter((node) -> isChild(node,id))
