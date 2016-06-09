<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="monApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Streaming</title>
        <script src="<c:url value="/JS/angular.js"/>" type="text/javascript"></script>
        <script>
            var app = angular.module('monApp', []);

            app.controller("menuController", ['$scope', '$http', function ($scope, $http) {

                    $scope.messageAlerte = function(msg){
                        alert(msg);
                    };
                }]);
        </script>
    </head>
    <body ng-controller="menuController">
        <input type="button" value="Exemple de directive ng-click" ng-click="messageAlerte('YO MAN!');"/>
    </body>
</html>