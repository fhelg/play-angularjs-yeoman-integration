"use strict";var angularjsAppApp=angular.module("angularjsAppApp",[]).config(["$routeProvider",function(a){a.when("/",{templateUrl:"views/main.html",controller:"MainCtrl"}).otherwise({redirectTo:"/"})}]);"use strict",angularjsAppApp.controller("MainCtrl",function(a){a.awesomeThings=["HTML5 Boilerplate","AngularJS","Testacular"]});