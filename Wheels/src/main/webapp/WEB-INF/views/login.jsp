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
        <li ><a href="Home">Home</a></li>
        <li ><a href="signUp">Sign Up</a></li>
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
   <form name='f' action="<c:url value='j_spring_security_check'/>" method='POST' >
      <table>
         <tr>
           <td style="font-size: 20px">Enter User Name:</td> <td><input type='text' name='j_username' style="width:300px;height: 40px" placeholder="UserName Required" s required="required"/></td><td><br></br></td>
         </tr>
         <tr><td><br></br></td></tr>
         <tr>
           <td style="font-size: 20px">Enter Password:</td> <td><input type='password' name='j_password' style="width: 300px;height: 40px" placeholder="Password Required" required="required"/></td><td><br></br></td>
         </tr>
          <tr><td><br></br></td></tr>
         <tr>
            <td><input name="submit" type="submit" value="submit" /></td>
         </tr>
      </table>
  </form>
 </div>
</div>
<%@include file="footer.jsp" %>
