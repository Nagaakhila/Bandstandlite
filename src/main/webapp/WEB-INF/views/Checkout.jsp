<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CheckOut</title>
    <link rel="stylesheet" href="<c:url value= "/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value= "/resources/assets/fonts/font-awesome.min.css"/>">
  <!--   <link rel="stylesheet" href="assets/css/styles.css">
   
   -->  <link rel="stylesheet" href="<c:url value= "/resources/assets/css/Bootstrap-Payment-Form.css"/>">
    <link rel="stylesheet" href="<c:url value= "/resources/assets/css/payment.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/assets/css/Google-Style-Login.css"/>">
	<link rel="stylesheet" href="<c:url value="resources/assets/css/Pretty-Footer.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/assets/css/Pretty-Registration-Form.css"/>">
    
</head>

<body>

<div 
   <c:import url="/WEB-INF/views/header.jsp" />>
</div>
<br>
<br>

<div class="container">
   <div class="col-xs-offset-2 col-xs-12">
             
            <div class="row .payment-dialog-row" id="checkOut-box">
                <div class="col-md-4 col-md-offset-4 col-xs-12">
                    <div class="panel panel-default credit-card-box">
                        <div class="panel-heading">
                            <h3 class="panel-title"><span class="panel-title-text">Payment Details </span><img class="img-responsive panel-title-image" src="<c:url value="/resources/assets/img/accepted_cards.png"/>"></h3></div>
                        <div class="panel-body">
                            <form:form action="invoice" id="payment-form" modelAttribute="card">
                            <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                        	<form:label class="control-label" path="card_number">Card </form:label>
                                            <div class="input-group">
                                               <form:input class="form-control" type="text" required="" placeholder="Card_number" path="card_number"/>
                                                <div class="input-group-addon"><span><i class="fa fa-user"></i></span></div>
                                                </div>
                                             </div>
                                        </div>
                                    </div>

                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <form:label class="control-label" path="card Holders Name">Card Holders Name </form:label>
                                            <div class="input-group">
                                                <form:input class="form-control" type="tel" required="" placeholder="Card Holders name" path="Card Holders Name"/>
                                                <div class="input-group-addon"><span><i class="fa fa-Card Holders Name"></i></span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-7">
                                        <div class="form-group">
                                            <label class="control-label" for="cardExpiryDate"><span class="hidden-xs">CardExpiry </span><span class="visible-xs-inline">Expiry </span> date</label>
                                            <input class="form-control" type="tel" required="" placeholder="MM / YY" id="cardExpiry">
                                        </div>
                                    </div>
                                    <div class="col-xs-5 pull-right">
                                        <div class="form-group">
                                            <label class="control-label" for="cardCVC">CVV code</label>
                                            <input class="form-control" type="tel" required="" placeholder="CVV" id="cardCVC">
                                        </div>
                                    </div>
                                </div>
                                
                                
    								<div class="row">
                                    <div class="col-xs-12">
                                        <button class="btn btn-success btn-block btn-lg" type="submit">Pay</button>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
   
   <br>
  

   <form:form action="invoice" id="payment-form" modelAttribute="card">                         
  	<div class="row">
    <div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4">
        <button class="btn btn-warning btn-block" data-toggle="modal" data-target="#myModal" type="button">Cash on Delivery</button>
    </div></div>
    <div class="modal fade" id="myModal" role="dialog" tabindex="-1">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title">Cash On Delivery</h4></div>
                <div class="modal-body">
                    <p>A Shipping Charge of <Strong>Rs.99/-</Strong> is applicable for Cash on Delivery</p>
                    <div class="col-xs-offset-2 col-xs-12">
             <div class="form-group">
                 <label class="control-label" for="total"><h3><strong>Grand Total : ${total} + ${cod}</strong></h3></label>
                </div>
                </div>                    
        
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Close</button>
                    <button class="btn btn-primary" type="submit">Agree & Place the Order</button>
                </div>
            </div>
        </div>
    </div>
   
 </form:form>
    </div>
    
    <div 
   <c:import url="/WEB-INF/views/footer.jsp" />>
</div>
    
    
    <script src="<c:url value= "/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value= "/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>