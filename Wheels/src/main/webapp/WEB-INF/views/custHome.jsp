<!DOCTYPE html>
<html lang="en">
<head>
 <% 
 response.setHeader("pragma", "no-cache");
 response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
 response.setHeader("Expires", "0");
 %>
  <title>Vintage</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script>document.write('<base href="' + document.location + '" />');</script>
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="./resources/css/style.css" rel="stylesheet" media="screen">
    <script data-require="angular.js@1.0.x" src="http://code.angularjs.org/1.0.7/angular.min.js" data-semver="1.0.7"></script>

  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
	.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="Home"><span class="glyphicon glyphicon-home"></span></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <li class="active"></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">COLLECTIONS <span class="caret"></span></a>
        <ul class="dropdown-menu">
     <li><a href="categorywise?category=Classic">Classic</a></li>
      <li><a href="categorywise?category=Limited">Limited</a></li>
      <li><a href="categorywise?category=Sports">Sports</a></li>
	  </ul>
      
       
        <li><a href="logout">Logout</a></li>
		  <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
		   
		    <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
		
		  
      </ul>
    </div>
  </div>
</nav>
<div>
<center><img src="resources/images/logo.jpg" style="width:300px;height: 150px"></center>
</div>
<div>
<div class="container">
  <div ng-app="myApp" ng-controller="dataCtrl">
Enter Name/category: <input type="text"  ng-model="search">&nbsp&nbsp<span class="glyphicon glyphicon-search"></span>
    <hr></hr>
    <table class="table table-striped">
    <tr>
    
   
    <th>NAME</th>
    <th>PRICE</th>
    
    </tr>
        <tr ng-repeat="resource in names | filter:search">
             
            <td>{{resource.name}}</td>
           
            <td>{{resource.price}}</td>
             <td><img src="resources/images/{{resource.id}}.jpg" style="width: 200px;height:150px"></td>
            <td><a href="selectedProduct?id={{resource.id}}">ViewProduct</a></td>
            
        </tr>    
    </table>
</div>
<script>
angular.module('myApp',[]).controller('dataCtrl',function($scope)
		{
	
		$scope.names=${listOfProducts};
		$scope.orderByMe=function(x)
		{
			$scope.myOrderBy=x;
			}
		});
</script>
</body>
</html>
