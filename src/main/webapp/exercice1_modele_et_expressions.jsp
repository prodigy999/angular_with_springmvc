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

                    $scope.titrePage = 'Le scope et les {{ expressions }}'
                    $scope.film = {titre: 'Dracula', annee: '2000'};
                }]);
        </script>
    </head>
    <body ng-controller="menuController">
        <h1>
            Titre du film: {{ film.titre}}
        </h1>
        <div>
            Année de production: {{ film.annee}}
        </div>
        <div>
            1 + 1 : {{ 1 + 1 }}
            <br>
            Un + Deux : {{ 'Un' + 'Deux' }}
        </div>
    </body>
</html>