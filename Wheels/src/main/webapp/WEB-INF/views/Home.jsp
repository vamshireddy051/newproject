<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>
<article>
  <header>
    <h1>BUY VINTAGE GO CRAZY</h1>
  </header>
</article>
<div class="container">
</div>
 
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">VINTAGEFEVER</a>
    </div>
    <ul class="nav navbar-nav">
      <!-- <li class="active"></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">COLLECTIONS <span class="caret"></span></a>
        <ul class="dropdown-menu">
     <li><a href="categorywise?category=Classic">Classic</a></li>
      <li><a href="categorywise?category=Limited">Limited</a></li>
      <li><a href="categorywise?category=Sports">Sports</a></li>
	  </ul>
 -->      <li><a href="Home">HOME</a></li>
      <li><a href="aboutUs">ABOUT US</a></li>
    </ul></li>
	<ul class="nav navbar-nav navbar-right">
 <li><a href="CustomerValidate">login</a></li>
<li><a href="signUp">signUp</a>
</ul>
  </div>
</nav>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
				<div class="item active">
						<img src=<c:url value="/resources/images/z.jpg"/> alt="Car" width="800" height="300">
				</div>

				<div class="item">
					<img src=<c:url value="/resources/images/zz.jpg"/> alt="Car" width="800" height="300">
				</div>

				<div class="item">
					<img src=<c:url value="/resources/images/zzz.jpg"/> alt="Car" width="800" height="300">
				</div>
				<div class="item">
					<img src=<c:url value="/resources/images/zzzz.jpg"/> alt="car" width="800" height="300">
				</div>


    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<%@include file="footer.jsp" %>

