<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
   <head>
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
<style>
.parallax-container {
  height: 400px;
}
</style>
   </head>
   <body class="grey lighten-4">
	 <jsp:include page="_header.jsp" />

<section>
 <div class="slider space">
    <ul class="slides">
      <li>
        <img class="enterleave" src="images/ITTraining.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>Software Training</h3>
          <h4 class="light blue-text text-darken-4">We are taking a lead in spreading an innovative form of learning that provides you with theoretical as well as practical training.</h4>
			<!--<a href="#" class="btn waves-effect" data-toggle="modal" data-target="#myModal">Read More</a>-->
        </div>
      </li>
      <li>
        <img class="enterleave" src="images/ITInternship.jpg"> <!-- random image -->
        <div class="caption left-align">
          <h3>Internship</h3>
          <h4 class="light teal-text text-darken-4">We provide Software Developement Internship in different streams.</h4>
        </div>
      </li>
      <li>
        <img class="enterleave" src="images/FinalYearProject.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3>Final Year Project</h3>
          <h4 class="light orange-text text-darken-4">We provide project guidance services to final year students in computer, electronics, IT engineering.</h4>
        </div>
      </li>
    </ul>
	
	<a class="btn-floating btn-small green" href="#"><i class="pauseplay large material-icons">pause</i></a>
  </div>
</section>


<!-- <div class="test fixed-action-btn"><a id="menu" class="btn-floating btn-large red" href="#"><i class="large material-icons">chat</i></a></div>Gitter Chat Link id="callback__btn--> 
<!-- <a class="waves-effect waves-light btn" onclick="$('#callback__attract').tapTarget('open')">Open tap target</a> -->

<div class="fixed-action-btn"><button type="button" data-target="callback__modal" class="btn-floating btn-large green darken-1 z-depth-4 waves-effect waves-light pulse modal-trigger"><i id="callback__phone-icon" class="material-icons white-text">phone</i></button></div>
      <div id="callback__attract" class="tap-target green lighten-1" data-target="callback__btn">
         <div class="tap-target-content white-text">
            <h5 class="text-bold">Need professional advice?</h5>
            <p>Leave your phone number and our qualified specialist will call you back! The call is free.</p>
         </div>
      </div>
  
      <!-- Modal1 -->
      <div class="modal grey lighten-3" id="modal1">
		 <!-- Modal content-->
         <div class="modal-content">
            <div class="row">
			<button type="button" class="modal-close" data-dismiss="modal">&times;</button>
               <div class="col s12 m6 offset-m3">
                  <div class="card login-wrapper">
                     <div class="card-content">
                        <div id="CustomerLoginForm">
                           <form method="post" action="../account/login.html" id="customer_login" accept-charset="UTF-8">
                              <input type="hidden" name="form_type" value="customer_login" /><input type="hidden" name="utf8" value="✓" />
                              <h4 class="center">Login</h4>
                              <div class="input-field">
                                 <label for="CustomerEmail">
                                 Email
                                 </label>
                                 <input type="email"
                                    name="customer[email]"
                                    id="CustomerEmail"
                                    class=""
                                    spellcheck="false"
                                    autocomplete="off"
                                    autocapitalize="off"
                                    autofocus>
                              </div>
                              <div class="input-field">
                                 <label for="CustomerPassword">
                                 Password
                                 </label>
                                 <input type="password"
                                    name="customer[password]"
                                    id="CustomerPassword"
                                    class="">
                              </div>
                              <input type="submit" class="btn-large z-depth-0" value="Sign In">
                              <a href="#recover" id="RecoverPassword">Forgot your password?</a>
                           </form>
                        </div>
                        <div id="RecoverPasswordForm" class="hide">
                           <h4 class="center">Reset your password</h4>
                           <p>We will send you an email to reset your password.</p>
                           <form method="post" action="../${pageContext.request.contextPath}" accept-charset="UTF-8">
                              <input type="hidden" name="form_type" value="recover_customer_password" /><input type="hidden" name="utf8" value="✓" />
                              <div class="input-field">
                                 <label for="RecoverEmail">
                                 Email
                                 </label>
                                 <input type="email"
                                    name="email"
                                    id="RecoverEmail"
                                    spellcheck="false"
                                    autocomplete="off"
                                    autocapitalize="off">
                              </div>
                              <input type="submit" class="btn-large z-depth-0" value="Submit">
                              <a href="#" id="HideRecoverPasswordLink">
                              Cancel
                              </a>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="form-success hide" id="ResetSuccess">
            We&#39;ve sent you an email with a link to update your password.
         </div>
      </div>
      </div>
	  
	<div class="tap-target" data-target="menu">
    <div class="tap-target-content">
      <h5>Enquiry</h5>
	  <h5>For Any Enquiery Leave you comment with number here</h5>
      <p>We will get bacck to you</p>
    </div>
  </div>
	  
      <!-- //Modal1 -->	
      <!-- Modal2 -->
      <div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-header">
				  <button type="button" class="modal-close" data-dismiss="modal">&times;</button>
                  <div class="signin-form profile">
                     <h3 class="agileinfo_sign">Sign Up</h3>
                     <div class="login-form">
                        <form action="#" method="post">
                           <input type="text" name="name" placeholder="Username" required="">
                           <input type="email" name="email" placeholder="Email" required="">
                           <input type="password" name="password" placeholder="Password" required="">
                           <input type="password" name="password" placeholder="Confirm Password" required="">
                           <input type="submit" class="btn-large z-depth-0" value="Sign Up">
                        </form>
                     </div>
                     <p><a href="#"> By clicking register, I agree to your terms</a></p>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- //Modal2 -->	
      <!-- Modal2 -->
      <div class="modal fade" id="myModal4" tabindex="-1" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="signin-form profile">
                     <div class="login-form">
                        <form action="#" method="post">
                           <input type="text" name="name" placeholder="Username" required="">
                           <input type="email" name="email" placeholder="Email" required="">
                           <input type="password" name="password" placeholder="Password" required="">
                           <input type="text" name="subject" placeholder="Subject" required="">
                           <textarea name="Comments" placeholder="Message" required=""></textarea>
                           <input type="submit" value="SUBMIT">
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
	  
	  <div>
        <!-- <div class="section">
            <div class="row">
               <div class="col s12 m6">
                  <div class="card">
				  <div class="card-image">
				   <img src="images/ITTraining2.jpg">
						<span class="card-title"><font face="Garamond" class="blue-text text-darken-4"><h4>Software Training</h4></font></span>
				   </div>
				</div>
            </div>
			<div class="col s12 m6">
			<div class="card-panel">
        <span class="white-text">I am a very simple card. I am good at containing small bits of information.
        I am convenient because I require little markup to use effectively. I am similar to what is called a panel in other frameworks.
        </span>
      </div>
			</div>
         </div>
      </div>-->
	  <div class="col s12">
    <div class="card horizontal">
      <div class="card-image">
        <img src="images/ITTraining2.jpg">
		<span class="card-title"><font face="Garamond" class="blue-text text-darken-4"><h4>Software Training</h4></font></span>
      </div>
      <div class="card-stacked grey darken-4">
        <div class="card-content">
          <font face="Courier" class="white-text"><h5>We offers a wide variety of software classes and access to the concepts and skill development reinforced through training & consulting and certification. We are taking a lead in spreading an innovative form of learning that provides you with theoretical as well as practical training. To know more about the software courses we offer, Please click the button below.<h5></font>
		  <a href="toCourses" class="modal-trigger btn-large waves-effect waves-light teal lighten-1">Courses</a>
        </div>
        <!--<div class="card-action">
          <a href="#">This is a link</a>
        </div>-->
      </div>
    </div>
  </div>
	  
      <!-- //Modal2 -->	
      <div id="index-banner" class="parallax-container">
         <div class="section no-pad-bot">
            <div class="container">
               <br><br>
               <h4 class="header center orange-text text-lighten-4">Software Training</h4>
               <div class="row center">
				  <font face="Courier New" class="white-text text-darken-4"><p><h3>If you pursue excellence and have a desire to make a difference, Apply now!<h3></p></font>
                  <a href="#callback__modal" class="modal-trigger btn-large waves-effect waves-light teal lighten-1">Enquiry</a>
               </div>
               <br><br>
            </div>
         </div>
         <div class="parallax"><img src="images/ITTraining1.jpg" alt="Unsplashed background img 1"></div>
      </div>
	  
	  <!-- Modal for cart-->
      <div id="modal-cart" class="modal bottom-sheet modal-fixed-footer">
         <div id="modal-cart-content" class="modal-content">
            <div id="modal-cart-list" class="container">
               <h4 class="flow-text text-bold">Your shopping cart</h4>
               <div class="card-panel">
                  <p class="flow-text text-bold">Your shopping cart is empty!</p>
                  <div class="row">
                     <div class="col s4 m3 l2 center"><img class="responsive-img lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="catalog/view/theme/materialize/image/cart-empty.png" alt="" width="128" height="128"></div>
                     <div class="col s8 m9 l10 grey lighten-3 z-depth-1 comment-body">
                        <p>Let me help you spend some money :)</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
        <!-- <div class="modal-footer grey lighten-3">
            <div class="container"><a href="index630e.html?route=checkout/cart" class="modal-action btn-flat waves-effect waves-default href-underline" rel="nofollow">View Cart</a></div>
         </div> -->
      </div>
      <div id="modal-language" class="modal">
         <div class="modal-content">
            <i class="material-icons modal-action modal-close waves-effect waves-circle close-icon">close</i>
            <h4>Language</h4>
            <form action="https://materialize.myefforts.ru/index.php?route=common/language/language" method="post" enctype="multipart/form-data" id="form-language">
               <ul>
                  <li><label for="ru-ru"><input id="ru-ru" class="with-gap language-select" type="radio" name="ru-ru"><span>Russian</span></label></li>
                  <li><label for="en-gb"><input id="en-gb" class="with-gap language-select" type="radio" name="en-gb" checked="checked"><span>English</span></label></li>
               </ul>
               <input type="hidden" name="code" value=""><input type="hidden" name="redirect" value="https://materialize.myefforts.ru/index.php?route=common/home">
            </form>
         </div>
      </div>
	  
      <form:form method="POST" action="saveUserEnquiry" modelAttribute="userEnquiryInfo" id="callback__modal" class="modal">
         <div class="modal-content">
            <i class="material-icons modal-action modal-close waves-effect waves-circle close-icon">close</i>
            <div class="row">
               <h4>Call back me</h4>
            </div>
            <div class="row">
				<div class="input-field"><i class="material-icons prefix">account_circle</i><form:input type="text" path="name" id="input-name" class="validate"/><label class="text-bold" for="input-name">What is your name</label></div>
			  <!-- <div class="input-field"><i class="material-icons prefix">email</i><input type="email" name="email" value="" id="input-email" class="validate"><label for="input-email" data-error="Wrong e-mail" data-success="E-mail Valid">E-Mail Address</label></div>-->
			  <div class="input-field col s12"><i class="material-icons prefix">email</i><form:input type="email" path="email" value="" id="input-email" class="validate"/><label class="text-bold" for="input-email">E-Mail Address</label></div>
               <div class="input-field col s12"><i class="material-icons prefix">phone</i><form:input id="callback-telephone" path="phoneNumber" type="tel" class="validate"/><label class="text-bold required" for="callback-telephone">Your phone number</label></div>
			   <div class="input-field col s12"><i class="material-icons prefix">account_balance</i><form:input path="college" id="input-college" class="validate"/><label class="text-bold" for="input-college">College Name</label></div>
			   <div class="input-field col s12"><i class="material-icons prefix">mode_edit</i><textarea name="comment" rows="10" id="input-enquiry" class="materialize-textarea"></textarea><label class="text-bold" for="input-enquiry">Comment</label></div>
			   <div class="input-field col s12"><i class="material-icons prefix">av_timer</i><form:input class="timepicker" path="fromTime" id="callback-calltimeFrom" value=""/><label for="callback-calltimeFrom" class="text-bold">Convenient time for a call (From Time:)</label></div>
			   <div class="input-field col s12"><i class="material-icons prefix">av_timer</i><form:input class="timepicker" path="toTime" id="callback-calltimeTo" value=""/><label class="text-bold" for="callback-calltimeTo">Convenient time for a call (To Time:)</label></div>
            </div>
            <!--<div class="row">
               <div class="col s12"><label for="agreement-check-callback"><input type="checkbox" name="module_callback_agree" value="1" id="agreement-check-callback" class="filled-in"><span>I have read and agree to the <a href="index7ee2.html?route=information/information/agree&amp;information_id=5" class="agree"><b>Terms &amp; Conditions</b></a></span></label></div>
            <input type="hidden" name="order_page" value="https://materialize.myefforts.ru/"></div>-->
         </div>
         <div class="modal-footer href-underline"><button type="submit" class="btn modal-action waves-effect submitbtn waves-light red white-text" value="Request a call">Request a call</button></div>
      </form:form>
      <!-- <button type="button" data-target="callback__modal" id="callback__btn" class="btn-floating btn-large green darken-1 z-depth-4 waves-effect waves-light pulse modal-trigger"><i id="callback__phone-icon" class="material-icons white-text">phone</i></button> -->
      <div id="callback__attract" class="tap-target green lighten-1" data-target="callback__btn">
         <div class="tap-target-content white-text">
            <h5 class="text-bold">Need professional advice?</h5>
            <p>Leave your phone number and our qualified specialist will call you back! The call is free.</p>
         </div>
      </div>
	  
	  
 <div>
         <div class="section">
            <div class="row">
              <!-- <div class="col s12 m4">
                  <div class="icon-block">
                     <h2 class="center brown-text"><i class="material-icons">flash_on</i></h2>
                     <h5 class="center">Speeds up development</h5>
                     <p class="light">We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.</p>
                  </div>
               </div> -->
			   <div class="col s12">
    <div class="card horizontal">
      <div class="card-image">
        <img src="images/Internship.jpg">
		<span class="card-title"><font face="Garamond" class="orange-text text-darken-4"><h3>Internship</h3></font></span>
      </div>
      <div class="card-stacked grey darken-4">
        <div class="card-content">
          <font face="Courier" class="white-text"><h5>We are a group of passionate, young and talented software engineers. We provide services in Web development, Mobile Application developments, Cloud Computing, Software Testing & Design Services.</h5><p><h5>We provide Software Developement Internship in different streams. For more details, click on below button</p></h5></font>
		  <a href="toCourses" class="modal-trigger btn-large waves-effect waves-light teal lighten-1">Courses</a>
		  <a href="#callback__modal" class="modal-trigger btn-large waves-effect waves-light teal lighten-1">Enquiry</a>
        </div>
        <!--<div class="card-action">
          <a href="#">This is a link</a>
        </div>-->
      </div>
    </div>
  </div>
            </div>
         </div>
      </div>
      <div class="parallax-container valign-wrapper">
         <div class="section no-pad-bot">
            <div class="container">
               <div class="row">
                  
               </div>
            </div>
         </div>
         <div class="parallax"><img src="images/ITInternship1.jpg" alt="Unsplashed background img 2"></div>
      </div>
	  <div>
         <div class="section">
            <div class="col s12">
    <div class="card horizontal">
      <div class="card-image">
        <img src="images/FinalYearProject1.jpg">
		<span class="card-title"><font face="Garamond" class="red-text accent-4"><h4>Final Year Projects</h4></font></span>
      </div>
      <div class="card-stacked grey darken-4">
        <div class="card-content">
          <font face="Courier" class="white-text"><h5>Last Year BE ME/M.Tech IEEE Based Projects with Training description. We provide project guidance services to final year students in computer, electronics, IT engineering. We provide latest project topics to students & provide source code with explanation. These projects are designed to help you become more productive, increasing your chances of getting recruited in a core company or getting into any esteemed university for masters.<h5></font>
        </div>
        <!--<div class="card-action">
          <a href="#">This is a link</a>
        </div>-->
      </div>
    </div>
  </div>
         </div>
      </div>
	  
    <!--<div class="regularsilck slickslider">
	<div class="card sticky-action small hoverable">
	<span class="white-text badge red lighten-1 percent">Discount 31%</span>
	  <div>
	  <a href="${pageContext.request.contextPath}/toSinglePage"><img src="images/images1.jpg"></a>
	  <a href="single.html" class="link-product-add-cart">Quick View</a>
    </div>
  <div class="card-action">
	<button class="btn btn-floating btn-large waves-effect waves-light red add-cart" title="Add to Cart" onclick="cart.add('S005');"><i class="material-icons">add_shopping_cart</i></button><span class="card-price old-price grey-text">$875.00</span><span class="card-price red-text text-darken-2">$600.00</span>
 </div>
	</div>
<div class="card sticky-action small hoverable">
	<span class="white-text badge red lighten-1 percent">Discount 31%</span>
	  <div>
	  <img src="images/images2.jpg">
    </div>
  <div class="card-action">
	<button class="btn btn-floating btn-large waves-effect waves-light red add-cart" title="Add to Cart" onclick="cart.add('53');"><i class="material-icons">add_shopping_cart</i></button><span class="card-price old-price grey-text">$875.00</span><span class="card-price red-text text-darken-2">$600.00</span>
 </div>
	</div>
  <div class="card sticky-action small hoverable">
	<span class="white-text badge red lighten-1 percent">Discount 31%</span>
	  <div>
	  <img src="images/images3.jpg">
    </div>
  <div class="card-action">
	<button class="btn btn-floating btn-large waves-effect waves-light red add-cart" title="Add to Cart" onclick="cart.add('53');"><i class="material-icons">add_shopping_cart</i></button><span class="card-price old-price grey-text">$875.00</span><span class="card-price red-text text-darken-2">$600.00</span>
 </div>
	</div>
	<div class="card sticky-action small hoverable">
	<span class="white-text badge red lighten-1 percent">Discount 31%</span>
	  <div>
	  <img src="images/images1.jpg">
    </div>
  <div class="card-action">
	<button class="btn btn-floating btn-large waves-effect waves-light red add-cart" title="Add to Cart" onclick="cart.add('53');"><i class="material-icons">add_shopping_cart</i></button><span class="card-price old-price grey-text">$875.00</span><span class="card-price red-text text-darken-2">$600.00</span>
 </div>
	</div>
  <div class="card sticky-action small hoverable">
	<span class="white-text badge red lighten-1 percent">Discount 31%</span>
	  <div>
	  <img src="images/images2.jpg">
    </div>
  <div class="card-action">
	<button class="btn btn-floating btn-large waves-effect waves-light red add-cart" title="Add to Cart" onclick="cart.add('53');"><i class="material-icons">add_shopping_cart</i></button><span class="card-price old-price grey-text">$875.00</span><span class="card-price red-text text-darken-2">$600.00</span>
 </div>
	</div>
   <div class="card sticky-action small hoverable">
	<span class="white-text badge red lighten-1 percent">Discount 31%</span>
	  <div>
	  <img src="images/images3.jpg">
    </div>
  <div class="card-action">
	<button class="btn btn-floating btn-large waves-effect waves-light red add-cart" title="Add to Cart" onclick="cart.add('53');"><i class="material-icons">add_shopping_cart</i></button><span class="card-price old-price grey-text">$875.00</span><span class="card-price red-text text-darken-2">$600.00</span>
 </div>
	</div>
<div class="card sticky-action small hoverable">
	<span class="white-text badge red lighten-1 percent">Discount 31%</span>
	  <div>
	  <img src="images/images1.jpg">
    </div>
  <div class="card-action">
	<button class="btn btn-floating btn-large waves-effect waves-light red add-cart" title="Add to Cart" onclick="cart.add('53');"><i class="material-icons">add_shopping_cart</i></button><span class="card-price old-price grey-text">$875.00</span><span class="card-price red-text text-darken-2">$600.00</span>
 </div>
	</div>
<div class="card sticky-action small hoverable">
	<span class="white-text badge red lighten-1 percent">Discount 31%</span>
	  <div>
	  <img src="images/images2.jpg">
    </div>
  <div class="card-action">
	<button class="btn btn-floating btn-large waves-effect waves-light red add-cart" title="Add to Cart" onclick="cart.add('53');"><i class="material-icons">add_shopping_cart</i></button><span class="card-price old-price grey-text">$875.00</span><span class="card-price red-text text-darken-2">$600.00</span>
 </div>
	</div>
   <div class="card sticky-action small hoverable">
	<span class="white-text badge red lighten-1 percent">Discount 31%</span>
	  <div>
	  <img src="images/images3.jpg">
    </div>
  <div class="card-action">
	<button class="btn btn-floating btn-large waves-effect waves-light red add-cart" title="Add to Cart" onclick="cart.add('53');"><i class="material-icons">add_shopping_cart</i></button><span class="card-price old-price grey-text">$875.00</span><span class="card-price red-text text-darken-2">$600.00</span>
 </div>
	</div>
<div class="card sticky-action small hoverable">
	<span class="white-text badge red lighten-1 percent">Discount 31%</span>
	  <div>
	  <img src="images/images1.jpg">
    </div>
  <div class="card-action">
	<button class="btn btn-floating btn-large waves-effect waves-light red add-cart" title="Add to Cart" onclick="cart.add('53');"><i class="material-icons">add_shopping_cart</i></button><span class="card-price old-price grey-text">$875.00</span><span class="card-price red-text text-darken-2">$600.00</span>
 </div>
	</div>
    <div>
      <img src="images/images2.jpg">
    </div>
    <div>
      <img src="images/images3.jpg">
    </div>
   </div> 
<a class="pp2 btn-floating btn-small waves-effect waves-light cyan accent-3"><i class="material-icons">navigate_before</i></a>
<a class="nn2 btn-floating btn-small waves-effect waves-light cyan accent-3"><i class="material-icons">navigate_next</i></a>-->
	  
      <!--<div class="container">
         <div class="section">
            <div class="row">
               <div class="col s12 center">
                  <h3><i class="mdi-content-send brown-text"></i></h3>
                  <h4>Contact Us</h4>
                  <p class="left-align light">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam pellentesque tristique arcu, non consequat magna fermentum ac. Cras ut ultricies eros. Maecenas eros justo, ullamcorper a sapien id, viverra ultrices eros. Morbi sem neque, posuere et pretium eget, bibendum sollicitudin lacus. Aliquam eleifend sollicitudin diam, eu mattis nisl maximus sed. Nulla imperdiet semper molestie. Morbi massa odio, condimentum sed ipsum ac, gravida ultrices erat. Nullam eget dignissim mauris, non tristique erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>
               </div>
            </div>
         </div>
      </div> -->
      <div class="parallax-container valign-wrapper">
         <div class="section no-pad-bot">
            <div class="container">
			<h3 class="header center blue-text text-darken-4">Final Year Project</h3>
               <div class="row center">
                  <h4 class="header col s12"><font face="Courier" class="white-text text-darken-4">The skills, in addition to your technical skills, can only be groomed by doing engineering projects practically. For more details, contact us.</font></h4>
				  <a href="#callback__modal" class="modal-trigger btn-large waves-effect waves-light teal lighten-1">Enquiry</a>
               </div>
            </div>
         </div>
         <div class="parallax"><img src="images/FinalYearProject2.jpg" alt="Unsplashed background img 3"></div>
      </div>
	  
	  
	  <!--<a id="compare-btn" href="index6431.html?route=product/compare" class="btn-floating btn-large waves-effect waves-light scale-transition pulse blue scale-out" title="Compare products" rel="nofollow"><i class="material-icons white-text">compare_arrows</i><small id="compare-total" class="btn-floating z-depth-1 pulse light-blue darken-2 white-text">0</small></a>-->
      <script type="application/ld+json">
         {
         	"@context": "http://schema.org",
         	"@type": "WebSite",
         	"url": "https://materialize.myefforts.ru/",
         	"potentialAction": {
         		"@type": "SearchAction",
         		"target": "https://materialize.myefforts.ru/index.php?route=product/search&search={query}",
         		"query-input": "required name=query"
         	}
         }
      </script>
      <main>
         <div class="container">
            <div class="row">
               <div class="col s12">
                  <div class="section">
                     <div></div>
                  </div>
    
                  <section class="section href-underline">
				  <font face="Trajan" class="blue-text text-darken-4"><h4>Faculties</h4></font>
                     <div class="row">
                        <div class="col s12 m6 xl4">
                           <div class="card medium">
                              <div class="card-image"><img class="responsive-img lazyload" src="images/images1.jpg" alt="Senior Software Engineer" title="Senior Software Engineer">
							  </div>
                              <div class="card-content center-align"><span class="card-title"><a href="iphone-7-plus-red-special-edition-256gb-en.html" class="grey-text text-darken-4">Consultant at Capgemini, Pune</a></span></div>
                           </div>
                        </div>
						
						<div class="col s12 m6 xl4">
                           <div class="card sticky-action medium hoverable">
						   <!--<span class="white-text badge red lighten-1 percent">Discount 31%</span>-->
                              <div class="card-image"><!--<i class="material-icons waves-effect waves-circle close-icon activator">more_vert</i>--><img class="responsive-img lazyload" src="images/images1.jpg" alt="Senior Software Engineer" title="Senior Software Engineer">
							  </div>
                              <div class="card-content center-align"><span class="card-title"><a href="iphone-7-plus-red-special-edition-256gb-en.html" class="grey-text text-darken-4">Consultant at Capgemini, Pune</a></span></div>
                            
                              <!--<div class="card-reveal">
                                 <span class="card-title"><a href="iphone-7-plus-red-special-edition-256gb-en.html" class="grey-text text-darken-4">dfafsad asfasdf22</a><i class="material-icons waves-effect waves-circle close-icon">close</i></span>
                                 <p>addasfsdf</p>
							  </div>-->
                           </div>
                        </div>
						
						<div class="col s12 m6 xl4">
                           <div class="card sticky-action medium hoverable">    
                              <div class="card-image"><img class="responsive-img lazyload" src="images/images1.jpg" alt="Assistant Manager" title="Assistant Manager">
							  </div>
                              <div class="card-content center-align"><span class="card-title"><a href="iphone-7-plus-red-special-edition-256gb-en.html" class="grey-text text-darken-4">Data Scientist at Concentrix, Pune</a></span></div>
                           </div>
                        </div>
						
                     </div>
                  </section>
                  <!--<div class="card-panel">
					 <section>
					 <blockquote>
                                 <table class="bordered centered responsive-table t1 highlight">
                                    <thead>
                                       <tr>
                                          <th>&nbsp;</th>
                                          <th>sdf</th>
                                          <th>asdf</th>
                                          <th>asdfs</th>
                                          <th>ad</th>
                                          <th>sdf</th>
                                          <th>asdf</th>
                                          <th>asdf</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                       <tr>
                                          <td><b>dasf</b></td>
                                          <td>09:00</td>
                                          <td>09:00</td>
                                          <td>09:00</td>
                                          <td>09:00</td>
                                          <td>09:00</td>
                                          <td>10:00</td>
                                          <td>sdfa</td>
                                       </tr>
                                       <tr>
                                          <td><b>sadf</b></td>
                                          <td>21:00</td>
                                          <td>21:00</td>
                                          <td>21:00</td>
                                          <td>21:00</td>
                                          <td>21:00</td>
                                          <td>19:00</td>
                                          <td>adfasf</td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </blockquote>
					</section>
                     <section class="section">
                        <h3>sdf</h3>
                        <div class="divider"></div>
                        <blockquote>sdfdsdfd</blockquote>
                     </section>
                  </div> -->
                  <script>
                     document.addEventListener("DOMContentLoaded", function(event) {
                     	$('.slick-carousel').not('.slick-initialized').slick({
                     		infinite: true,
                     		slidesToShow: 6,
                     		slidesToScroll: 3,
                     		dots: true,
                     		infinite: true,
                     		speed: 300,
                     		autoplay: true,
                     		lazyLoad: 'ondemand',
                     		responsive: [
                     		{
                     			breakpoint: 460,
                     			settings: {
                     				slidesToShow: 1,
                     				slidesToScroll: 1
                     			}
                     		},
                     		{
                     			breakpoint: 600,
                     			settings: {
                     				slidesToShow: 2,
                     				slidesToScroll: 2
                     			}
                     		},
                     		{
                     			breakpoint: 992,
                     			settings: {
                     				slidesToShow: 3,
                     				slidesToScroll: 3
                     			}
                     		},
                     		{
                     			breakpoint: 1240,
                     			settings: {
                     				slidesToShow: 4,
                     				slidesToScroll: 4
                     			}
                     		},
                     		]
                     	});
                     });
                  </script>
               </div>
            </div>
         </div>
      </main>
	  <jsp:include page="_footer.jsp" />
	  <style>
	  .t1{position:absolete;z-index:997;overflow:visible;right:20px;top:20px;left:20px;}
	  </style>
      <!--JavaScript at end of body for optimized loading-->
      <!--  Scripts-->
      <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
      <!-- Compiled and minified JavaScript -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
      <script src="js/init.js"></script>
	   <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  
  </body>
</html>