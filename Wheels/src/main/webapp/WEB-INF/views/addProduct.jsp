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
    <form:form action="addProductItem" commandName="addNewItem"  method ="POST" enctype="multipart/form-data">
   
<table align="center">
<tr>
<td>Product Name:</td>
<td><form:input path="name" required="required"></form:input><form:errors path="name" style= "color:red" /></td>
</tr>
<tr>
<td>Product Description:</td>
<td><form:input path="description" required="required"  ></form:input><form:errors path="description" ></form:errors></td>
</tr>
<tr>
<td>Price:</td>
<td><form:input path="price" required="required" ></form:input><form:errors path="price" ></form:errors></td>
</tr>
<tr>
<td>CATEGORY:</td>
<td>
<form:select path="category"  >
<form:option value="Classic">Classic</form:option>
<form:option value="Limited">Limited</form:option>
<form:option value="Sports">Sports</form:option>
</form:select></td>
</tr>
<tr>
<td>FILE:</td>
<td><input type="file"  name="file" path="file" required="required" /><form:errors path="price" ></form:errors></td>
</tr>
<tr>
<tr>
<td><input type="submit" value="ADDPRODUCT"/></td>
</tr>
</table>
</form:form>
 </div>
 
 
 
 
 
 
 
 
 
 
 
</div>
<%@include file="footer.jsp" %>
