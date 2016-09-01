 <!DOCTYPE html>
<html lang="en">
<head>
  <title>Vintage</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <script type="text/javascript">
$(document).ready(function(){
     $("#myCarousel").carousel({
         interval : 1000,
         pause: false
     });
});
</script>
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
      <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li> <button type="button" class="btn btn-primary btn-s" style="background-color:blue">Vintage</button></li>
        <li><a href="ViewProfile">View Profile</a></li>
         <li><a href="logout">Log Out</a></li>
		  <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
		    
		   
		    <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>  
      </ul>
    </div>
  </div>
</nav>
    </div>
<div class="container">
  <div ng-app="myApp" ng-controller="dataCtrl">
Enter Brand:  <input type="text"  ng-model="search">&nbsp&nbsp<span class="glyphicon glyphicon-search"></span>
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
           
             <td><a href="selectedProduct?id={{resource.id}}">ViewProductDetails</a></td>
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
<%@include file="footer.jsp" %>