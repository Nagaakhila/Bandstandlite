<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
    </head>
    <body>
        <h3>Welcome, Enter The Product Details</h3>
        <form:form method="POST" action="saveProduct" modelAttribute="product" enctype="multipart/form-data">
             <table>
                <tr>
                    <td><form:label path="name">Product Name</form:label></td>
                    <td><form:input path="name"/></td>
                </tr>
		<tr>
                    <td><form:label path="description">Product Description</form:label></td>
                    <td><form:input path="description"/></td>
                </tr>
		<tr>
                    <td><form:label path="price">Product Price</form:label></td>
                    <td><form:input path="price"/></td>
                </tr>

                <tr>
                    <td><form:label path="quantity">Quantity</form:label></td>
                    <td><form:input path="quantity"/></td>
                </tr> 
          <tr>
						<td><form:label class="btn btn-default btn-block" path="supplier_id">Supplier</form:label></td>
								
							
						<td><form:select path="supplier_id" class="form-control"
								required="true">
								<c:forEach items="${supplierList}" var="supplier">
									<form:option class="form-control" value="${supplier.id}">${supplier.supplierName}</form:option>
								</c:forEach>
							</form:select></td>
					</tr>
					<tr>
						<td><form:label class="btn btn-default btn-block" path="category_id">Category</form:label></td>
						<td><form:select class="form-control" path="category_id"
								required="true">
								<c:forEach items="${categoryList}" var="category">
									<form:option class="form-control" value="${category.id}">${category.categoryName}</form:option>
								</c:forEach>
							</form:select></td>
					</tr>
					<tr>
					<td>Image:</td>
					<td><form:input type="file"
							class=" btn btn-default btn-block form-control" path="image"
							required="" /></td>
				</tr>
     <tr>
  <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
        
        
        <div align="center">
		<table class="table" style="width: 80%" border="1px">
			<caption>Products</caption>
			<thead>
				<tr >
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Product Description</th>
					<th>Product Price</th>
					<th>Product Quantity</th>
					<th>Category ID</th>
					<th>Supplier ID</th>
					<th>Edit    Delete</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${productList}" var="product"	>
					<tr >
						<td align="center"><c:out value="${product.id}" />
						<td ><c:out value="${product.name}" />
						<td ><c:out value="${product.description}" />
						<td ><c:out value="${product.price}" />
						<td ><c:out value="${product.category_id}" />
						<td ><c:out value="${product.supplier_id}" />
						<td><div class="thumbnail">
								<img height="100px" width="100px" alt="${product.id }"
									src="<c:url value="/resources/images/${product.id }.jpg"></c:url>">
							</div>
				
								 <td><nobr> 
								<a class="btn btn-primary" href="editproduct/${product.id}"><span class="glyphicon-pencil"arial-hidden="true"> Edit</span></a>
 								<a class="btn btn-primary" href="removeproduct/${product.id}"><span class="glyphicon-pencil"arial-hidden="true"> Delete</span></a>
								
							</nobr></td> 
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
        
     
    </body>
</html>