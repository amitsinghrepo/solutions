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
#google-map {width:100%;height:360px;}
#map {position:relative;min-height:360px;}
.flex-reverse {position:relative;height:30px;}
</style>

   </head>
<body>
      
	 <jsp:include page="_header.jsp" /> 
	<main>
         <div class="teal lighten-2">
            <nav id="breadcrumbs" class="breadcrumb-wrapper transparent z-depth-0">
               <span class="breadcrumb-blur hide-on-med-and-up"></span>
               <div class="nav-wrapper breadcrumb-wrap href-underline">
				<a href="/" class="breadcrumb waves-effect black-text"><i class="material-icons">home</i></a>
					<span class="breadcrumb blue-grey-text text-darken-3">Contact Us</span>
			   </div>
            </nav>
            <h4>Contact Us</h4>
            <div class="row">
               <div class="col s12">
                  <div class="card-panel">
                     <div id="map">
                        <a href="http://maps.google.com/maps?q=55.801264,37.536723&amp;hl=en-gb&amp;t=m&amp;z=15" class="btn-floating btn-large halfway-fab waves-effect waves-light blue white-text" title="View on map" target="_blank" rel="noopener"><i class="material-icons">map</i></a>
                        <div id="google-map"></div>
                     </div>
                     <section class="section">
                        <h4>Contact Information</h4>
                        <div class="row">
                           <div class="col s12 l6">
                              <div class="card-panel">
                                 <ul class="collection no-border">
                                    <li class="collection-item no-border"><img class="responsive-img lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="" alt="Contact Information" title="Contact Information"></li>
                                    <li class="collection-item no-border">
                                       <address><i class="material-icons left">location_on</i>Sayakar Basit, Wakad, Near Wakad Bridge, Pune, Flat B101</address>
                                    </li>
                                    <!--<li class="collection-item no-border"><span><i class="material-icons left">phone</i>+7 (800) 555 35 35</span></li>-->
                                    <li class="collection-item no-border"><span><i class="material-icons left">email</i>getasamit@gmail.com</span></li>
                                    <li class="collection-item no-border"><i class="material-icons left">access_time</i>Weekdays from 09:00 to 18:00
                                    </li>
                                    <li class="collection-item no-border"><i class="material-icons left">info</i>Please feel free to contact for any services related query.
                                    </li>
                                 </ul>
                              </div>
                           </div>
                           <div class="col s12 l6">
                              <div class="card-panel">
                                 <form:form action="saveUserContactUs" method="post" modelAttribute="userContactUsDetails">
                                    <h3>Contact Us</h3>
                                    <div class="input-field"><i class="material-icons prefix">account_circle</i><form:input type="text" path="name" id="input-name" class="validate"/><label for="input-name">What is your name</label></div>
                                    <div class="input-field"><i class="material-icons prefix">email</i><form:input type="email" path="email" id="input-email" class="validate"/><label for="input-email" data-error="Wrong e-mail" data-success="E-mail Valid">E-Mail Address</label></div>
                                    <div class="input-field"><i class="material-icons prefix">mode_edit</i><textarea name="comment" rows="10" id="input-enquiry" class="materialize-textarea"></textarea><label for="input-enquiry">Comment</label></div>
                                   <!--<script src="js/api.js"></script>
                                    <div class="section" style="overflow:auto;">
                                       <h4>Captcha</h4>
                                       <label>Please complete the captcha validation below</label>
                                       <div class="g-recaptcha" data-sitekey="6LfGQhEUAAAAALRRq7mt02AODtgHS9Cr3SPpJwLB"></div>
                                    </div>-->
								   <div class="flex-reverse"><button class="btn submitbtn waves-effect waves-light red right" type="submit" value="Submit">Submit</button></div>
                                 </form:form>
                              </div>
                           </div>
                        </div>
                     </section>
                  </div>
               </div>
            </div>
         </div>
      </main>
      <script defer src="http://maps.googleapis.com/maps/api/js?key=AIzaSyC_2EelpC-uJrt60oWE7jSP1s3kFF5uPGI"></script><script>
         document.addEventListener("DOMContentLoaded", function(event) {
         						google.maps.event.addDomListener(window, 'load', init);
         
         	var element, options, myMap, myPlacemark, infoWindow;
         //18.591149, 73.747942
         	function init() {
         		element = document.getElementById('google-map');
         		options = {
         			center: {lat: 18.591149, lng: 73.747942},
         			zoom: 16
         		}
         
         		myMap = new google.maps.Map(element, options);
         
         		myPlacemark = new google.maps.Marker({
         			position: {lat: 18.591149, lng: 73.747942},
         			map: myMap,
         			icon: ''
         		});
         
         				infoWindow = new google.maps.InfoWindow({
         			content: '<p><img style="width: 136.117px; float: left; height: 44.5121px;" src="https://materialize.myefforts.ru/image/catalog/logo.png"><span id="result_box" class="short_text" lang="en"><span>&nbsp; </span></span><span id="result_box" class="short_text" lang="en"><span>This is an example of a description for the map.</span></span></p><p>&nbsp; <span id="result_box" class="short_text" lang="en"><span>Working time 24/7.</span></span><br></p>'
         		});
         		
         		myPlacemark.addListener('click', function() {
         			infoWindow.open(myMap, myPlacemark);
         		});
         	}
         	});
      </script>
      <jsp:include page="_footer.jsp" />
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