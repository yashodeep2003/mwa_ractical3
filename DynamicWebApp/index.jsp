<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html ng-app="greetingApp">
<head>
    <title>Dynamic Greeting Page</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>
<body ng-controller="GreetingController">

    <h2>Welcome, {{ name }}!</h2>
    <p>Change your name:</p>
    <input type="text" ng-model="name" />

    <hr>
    <p><strong>Server Time:</strong> <%= new Date() %></p>

    <script>
        var app = angular.module('greetingApp', []);
        app.controller('GreetingController', function ($scope) {
            $scope.name = "<%= request.getParameter("user") != null ? request.getParameter("user") : "Guest" %>";
        });
    </script>

</body>
</html>
