<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="monApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Streaming</title>
        <link href="<c:url value="/CSS/style1.css"/>" rel="stylesheet" type="text/css"/>
        <script src="<c:url value="/JS/angular.js"/>" type="text/javascript"></script>
        <script type="text/javascript">
            var app = angular.module("monApp", []);
            
            app.controller("monControleur", ["$scope", function($scope){
                    
                    $scope.titre = "Bienvenue sur ma mage";
            }]);
        </script>
    </head>
    <body ng-controller="monControleur">
        {{ titre }}
    </body>
</html>
