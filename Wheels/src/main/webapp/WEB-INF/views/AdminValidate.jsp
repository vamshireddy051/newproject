
<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp" %>
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
      <li> <button type="button" class="btn btn-primary btn-s" style="background-color:blue">Vintage</button></li>
		    <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
		    
      <li><a href="ViewCustomers">ViewCustomer</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCTS<span class="caret"></span></a>
       <ul class="dropdown-menu">
      <li><a href="AddProduct">addProduct</a></li>
      <li><a href="ViewProducts">ViewProducts</a></li>
	  </ul>  
	  <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
     <li class="nav navbar-nav navbar-right"><a href="logout">LogOut</a></li>
      </ul>
    </div>
  </div>
</nav>
    </div>

<div>
<center><img src="resources/images/logo.jpg" style="width: 400px"; height="200px"></center>
<hr></hr>

  
<div>
</div>
</div>
<%@include file="footer.jsp" %>
