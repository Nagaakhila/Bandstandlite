<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html lang="en-US">
<head>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 </head>
<title>Category </title>
<body>

	<c:url var="addAction" value="saveCategory"></c:url>

	<form:form action="${addAction}" modelAttribute="category" id="btn-add"  method="POST">
		<h3>
			<c:if test="$(category.id==0}">
		       Add New Item
	            </c:if>
			<c:if test="${!empty category.id}">
		      Update Category for Id: <c:out value="${category.id}" />
				 <form:hidden path="id"/> 
			</c:if>
			</h3>

			<table >

				<tr>
					<c:if test="${category.id!=0}">
						<td>Id:</td>
						<td><form:input path="id" /></td>
					</c:if>
				<tr>
					<td>Name:</td>
					<td><form:input path="categoryName" /></td>
				<tr>
					<td>Description:</td>
					<td><form:input path="categoryDescription" /></td>
				<tr>
				<td colspan="2"><c:if test="${category.id==0}">
							<input type="submit" value="Add" id="btn-add">
						</c:if> <c:if test="${category.id!=0}">
							<input type="submit" value="Update" id="btn-update">
						</c:if></td>
				<tr>
					<td colspan="2" class="success-msg"><c:out value="${msg}" /></td>
			</table>
			
			</form:form>
			<table>
			

   <div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
       
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
        <thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Description</th>
					
					<th colspan="2">Action</th>
				</tr>
				<c:forEach var="obj" items="${categoryList}">
					<tr>
						<td><c:out value="${obj.id}" /></td>
						<td><c:out value="${obj.categoryName}" /></td>
						<td><c:out value="${obj.categoryDescription}" /></td>
						

						 <td><a href="removecategory/${obj.id}" class="btn-default btn">Delete </a> 
						  <a href="editcategory/${obj.id}" button type="button" class="btn btn-primary">Edit</a></td> 
							<!-- <button type="button" class="btn btn-primary">Primary</button> -->
					</tr>
					
					
				</c:forEach>
				
			</table>
			
</div>
</div></div></div></table>



</body>
</html>
