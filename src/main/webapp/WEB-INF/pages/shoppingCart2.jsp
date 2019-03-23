<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Shopping Cart</title>
 
 <!--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css">-->
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <title>Parallax Template - Materialize</title>
      <!-- CSS  -->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!-- Compiled and minified CSS -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
      <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.css"/>
<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.css"/>
 
</head>
<body>
   <jsp:include page="_header.jsp" />
  
   <jsp:include page="_menu.jsp" />
  
   <fmt:setLocale value="en_US" scope="session"/>
 
   <div class="page-title">My Cart</div>
 
   <c:if test="${empty cartForm or empty cartForm.cartLines}">
       <h2>There is no items in Cart</h2>
       <a href="${pageContext.request.contextPath}/productList">Show
           Product List</a>
   </c:if>
 
   <c:if test="${not empty cartForm and not empty cartForm.cartLines   }">
       <form:form method="POST" modelAttribute="cartForm"
           action="${pageContext.request.contextPath}/shoppingCart">
 
           <c:forEach items="${cartForm.cartLines}" var="cartLineInfo"
               varStatus="varStatus">
               <div class="product-preview-container">
                   <ul>
                       <li><img class="product-image"
                           src="${pageContext.request.contextPath}/productImage?code=${cartLineInfo.productInfo.code}" />
                       </li>
                       <li>Code: ${cartLineInfo.productInfo.code} <form:hidden
                               path="cartLines[${varStatus.index}].productInfo.code" />
 
                       </li>
                       <li>Name: ${cartLineInfo.productInfo.name}</li>
                       <li>Price: <span class="price">
                      
                         <fmt:formatNumber value="${cartLineInfo.productInfo.price}" type="currency"/>
                        
                       </span></li>
                       <li>Quantity: <form:input
                               path="cartLines[${varStatus.index}].quantity" /></li>
                       <li>Subtotal:
                         <span class="subtotal">
                        
                            <fmt:formatNumber value="${cartLineInfo.amount}" type="currency"/>
                      
                         </span>
                       </li>
                       <li><a
                           href="${pageContext.request.contextPath}/shoppingCartRemoveProduct?code=${cartLineInfo.productInfo.code}">
                               Delete </a></li>
                   </ul>
               </div>
           </c:forEach>
           <div style="clear: both"></div>
           <input class="button-update-sc" type="submit" value="Update Quantity" />
           <a class="navi-item"
               href="${pageContext.request.contextPath}/shoppingCartCustomer">Enter
               Customer Info</a>
           <a class="navi-item"
               href="${pageContext.request.contextPath}/productList">Continue
               Buy</a>
       </form:form>
 
 
   </c:if>
 
 
   <jsp:include page="_footer.jsp" />
 <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
      <!-- Compiled and minified JavaScript -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
      <script src="js/init.js"></script>
	   <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</body>
</html>