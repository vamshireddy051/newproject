
<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@include file="header.jsp" %>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/Wheels/"><span class="glyphicon glyphicon-home"></span></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <li> <button type="button" class="btn btn-primary btn-s" style="background-color:blue">Vintage</button></li>
		    <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
        <li ><a href="/Wheels/">Home</a></li>
        <li ><a href="/Wheels/signUp">Sign Up</a></li>
		  <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
		   
		
		  
      </ul>
    </div>
  </div>
</nav>
    </div>
    <div>
    <hr></hr>
    </div>

<div>
<center><img src="resources/images/c1.jpg" style="width: 400px"; height="300px"></center>
<hr></hr>  
    <div align="center" class="form">
   <form:form action="register" commandName="Customerkey" method="POST" >
<table align="center">
<tr>
<td>UserName:</td>
<td><form:input path="username"></form:input><form:errors path="username" style= "color:red" /><br></td>
</tr>
<tr>
<td>PassWord:</td>
<td><form:password path="password"></form:password><form:errors path="password" style= "color:red" /></td>
</tr>
<tr>
<td>EmailId:</td>
<td><form:input path="emailid"></form:input><form:errors path="emailid"  style= "color:red"/></td>
</tr>
<tr>
<td><input type="submit" value="Register"/></td>
</tr>
</table>
</form:form>
 </div>
</div>
<%@include file="footer.jsp" %>
