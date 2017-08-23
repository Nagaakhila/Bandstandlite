<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<!-- <body>
<div class=container">
<div class=row">
<div class="col-sm-12">
<div id="my- slider" class="carousel slide" data ride="carousel">
<ol class="carousel-indicators">
<li data target="#my -slider" data-slide-to="0" class="active"></li>
<li data target="#my -slider" data-slide-to="1" class="active"></li>
<li data target="#my -slider" data-slide-to="2" class="active"></li>
</ol>
<div class="carousel-inner" role="listbox">
<div class="item active" id="slide-1">
<img src="images/guitar.jpg" alt="guitar"/>
<div class="carousel-caption">
<h1>The guitar has always been important to blues music<h1>
</div>
</div>
<div class="item " id="slide-2">
<img src="images/sitara.jpg" alt="sitara"/>
<div class="carousel-caption">
<h1>It is prominent instrument in Carnatic and Hindustani music, altered in order to conform with Mughal tastes.<h1>
</div>
</div>
<div class="item" id="slide-3">
<img src="images/violin.jpg" alt="violin"/>
<div class="carousel-caption">
<h1><It is the inspiration and emotion transferred to the listener upon hearing its powerfully romantic sound.h1>
</div>
</div>
< a class="left carousel control" href="#my-slider" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
</a>
< a class="right carousel -control" href="#my-slider" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
<span class="sr-only">Previous</span>
</a>
</div>
</div>
</div>
</div>  -->
${message}
 
<!-- <p>Welcome to the BandStandLite store—Your destination for the best musical instruments, gear and exclusive content to help you get the sound you’re after. We provide you the best online selection of musical instruments and equipment including guitars, effects, basses, guitar amplifiers, keyboards, drums, live sound, DJ, microphones, recording, band and orchestra, folk, accessories, and more.
We believe a true aficianado loves the instrument as much as they love music. 
You’ll even find an unmatched selection of open-box instruments and gear that ships worldwide</P> 
 -->
<jsp:include page="Header.jsp" ></jsp:include>
 
 <jsp:include page="showproduct.jsp" ></jsp:include>
 
 <%--  
  <div class="container">
		<c:forEach items="${ListProduct}" var="product">
			<h2 style="color: red">
				<c:out value="${product.name }" />
			</h2>


			<div class="col-xs-6 w3-animate-left">
				<div class="img">
					<img height="300px" width="300px" alt="${product.id}"
						src="<c:url value="/resources/images/${product.id}.jpg"></c:url>">
					<div class="desc">
							<strong>${product.name}</strong>

					</div>
				</div>
			</div>

			<div class="col-xs-4 ">
				<div class="img">
					<div class="desc">
						<p>
						<div class="form-group">
							<input type="text" class="form-control" value="${product.name}"
								readonly="readonly">
						</div>

						<div class="form-group">
							<input type="text" class="form-control"
								value="Rs. ${product.price}" readonly="readonly">
						</div>
						<div class="form-group">
							<input type="text" class="form-control"
								value="${product.description}" readonly="readonly">
						</div>
						<div>
							<form action="addtoCart/${product.id}">
								<input type="submit" value="Add to Cart"
									class="btn btn-primary">

							</form>
							
							<a href="addtoCart/${product.id}" class="btn btn-primary">Add to Cart</a>

						</div>

					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	
 --%>
 
<div class="container">
<div>
<c:choose>
		<c:when test="${ProductPageClicked}">
			<c:import url="/WEB-INF/views/Product.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${CategoryPageClicked}">
			<c:import url="/WEB-INF/views/Category.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${SupplierPageClicked}">
			<c:import url="/WEB-INF/views/Supplier.jsp"></c:import>
		</c:when>
	</c:choose>
	
	
	<c:choose>
		<c:when test="${LoginPageClicked}">
			<c:import url="/WEB-INF/views/Login.jsp"></c:import>
		</c:when>
	</c:choose>


<c:choose>
		<c:when test="${IfRegisterClicked}">
			<c:import url="/WEB-INF/views/Register.jsp"></c:import>
		</c:when>
	</c:choose>
           <div class="col-md-7">
          <p class="lead"><P>BandstandLite is the most trusted name in the online musical instruments, and pro-audio e-retailing segment. We bring to you a huge selection of Musical Instruments, Accessories, Pro-Audio, Recording Tools and Equipment - and we've only just begun to scratch the surface.

BandstandLite is a 100% e-commerce business, with exclusive tie-ups with the largest and most well known brands in the industry. Bandstandlite aims to be a one stop shop to satiate your need for anything related to music!</P>


</div><!-- /.container -->

 <jsp:include page="footer.jsp" ></jsp:include>



</body>
</html>