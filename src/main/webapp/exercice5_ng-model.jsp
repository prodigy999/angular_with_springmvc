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

                    $scope.film = {titre: 'VOTRE TITRE ICI', annee: 2016};
                }]);
        </script>
    </head>
    <body ng-controller="menuController">
        <h1>Champs liés au scope par <b>ng-model</b></h1>
        Titre: <input type="text" ng-model="film.titre"/>
        <br>
        Année: <input type="annee" ng-model="film.annee"/>
        <br>
        <h1>Contenu du scope</h1>
        Titre: {{ film.titre }} Année: {{ film.annee }}
    </body>
</html>