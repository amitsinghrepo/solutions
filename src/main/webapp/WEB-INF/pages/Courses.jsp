<!DOCTYPE html>
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
</style>

   </head>
<body class="light-blue lighten-5">
      
	 <jsp:include page="_header.jsp"/>
 <main>
         <div class="teal lighten-3">
            <nav id="breadcrumbs" class="breadcrumb-wrapper transparent z-depth-0">
               <span class="breadcrumb-blur hide-on-med-and-up"></span>
               <div class="nav-wrapper breadcrumb-wrap href-underline">
				<a href="/" class="breadcrumb waves-effect black-text"><i class="material-icons">home</i></a>
					<span class="breadcrumb blue-grey-text text-darken-3">Courses</span>
			   </div>
            </nav>
            <div class="row">
               <div class="col s12">
			   
			   <div class="row">
					<div class="col s12 m4">
					  <div class="card small">
						<div class="card-image">
						  <img src="images/JavaJ2EE1.jpg">
						  <span class="card-title white-text text-darken-4"><h4>Java/J2EE</h4></span>
						</div>
						<div class="card-content">
						  <p>More Details:</p>
						</div>
						<div class="card-action">
						  <a class="waves-effect waves-light btn modal-trigger" href="#javaj2eemodal">Details</a>
						  <!--<a class="waves-effect waves-light btn modal-trigger" href="#modal1">Batch Timings</a>-->
						</div>
					  </div>
					</div>
					<div class="col s12 m4">
					  <div class="card small">
						<div class="card-image">
						  <img src="images/SpringBoot2.jpg">
						  <span class="card-title white-text text-darken-4"><h4>Spring Boot</h4></span>
						</div>
						<div class="card-content">
						  <p>More Details:</p>
						</div>
						<div class="card-action">
						  <a class="waves-effect waves-light btn modal-trigger" href="#springbootmodal">Details</a>
						  <!--<a class="waves-effect waves-light btn modal-trigger" href="#modal1">Batch Timings</a>-->
						</div>
					  </div>
					</div>
					<div class="col s12 m4">
					  <div class="card small">
						<div class="card-image">
						  <img src="images/Hibernate1.jpg">
						  <span class="white-text text-darken-4 card-title"><h4>Hibernate</h4></span>
						</div>
						<div class="card-content">
						  <p>More Details:</p>
						</div>
						<div class="card-action">
						  <a class="waves-effect waves-light btn modal-trigger" href="#hibernatemodal">Details</a>
						  <!--<a class="waves-effect waves-light btn modal-trigger" href="#modal1">Batch Timings</a>-->
						</div>
					  </div>
					</div>
					<div class="col s12 m4">
					  <div class="card small">
						<div class="card-image">
						  <img src="images/Angular.jpg">
						  <span class="card-title"><h4>Angular 5,6,7</h4></span>
						</div>
						<div class="card-content">
						  <p>More Details:</p>
						</div>
						<div class="card-action">
						  <a class="waves-effect waves-light btn modal-trigger" href="#angularmodal">Details</a>
						  <!--<a class="waves-effect waves-light btn modal-trigger" href="#modal1">Batch Timings</a>-->
						</div>
					  </div>
					</div>
					<div class="col s12 m4">
					  <div class="card small">
						<div class="card-image">
						  <img src="images/DataScience1.jpg">
						  <span class="card-title"><h4>Data Science</h4></span>
						</div>
						<div class="card-content">
						  <p>More Details:</p>
						</div>
						<div class="card-action">
						  <a class="waves-effect waves-light btn modal-trigger" href="#datasciencemodal">Details</a>
						  <!--<a class="waves-effect waves-light btn modal-trigger" href="#modal1">Batch Timings</a>-->
						</div>
					  </div>
					</div>
					<div class="col s12 m4">
					  <div class="card small">
						<div class="card-image">
						  <img src="images/AI.jpg">
						  <span class="card-title"><h4>Artificial Intelligence</h4></span>
						</div>
						<div class="card-content">
						  <p>More Details:</p>
						</div>
						<div class="card-action">
						  <a class="waves-effect waves-light btn modal-trigger" href="#aimodal">Details</a>
						  <!--<a class="waves-effect waves-light btn modal-trigger" href="#modal1">Batch Timings</a>-->
						</div>
					  </div>
					</div>
					<!--<div class="col s12 m4">
					  <div class="card small">
						<div class="card-image">
						  <img src="images/BlockChain2.jpg">
						  <span class="white-text text-darken-4 card-title"><h4>Block Chain</h4></span>
						</div>
						<div class="card-content">
						  <p>More Details:</p>
						</div>
						<div class="card-action">
						  <a class="waves-effect waves-light btn modal-trigger" href="#blockchainmodal">Details</a>
						  <!--<a class="waves-effect waves-light btn modal-trigger" href="#modal1">Batch Timings</a>
						</div>
					  </div>
					</div>
					<div class="col s12 m4">
					  <div class="card small">
						<div class="card-image">
						  <img src="images/Android.jpg">
						  <span class="card-title"><h4>Android</h4></span>
						</div>
						<div class="card-content">
						  <p>More Details:</p>
						</div>
						<div class="card-action">
						  <a class="waves-effect waves-light btn modal-trigger" href="#androidmodal">Details</a>
						  <!--<a class="waves-effect waves-light btn modal-trigger" href="#modal1">Batch Timings</a>
						</div>
					  </div>
					</div>-->
			  </div>
                  <!--<div class="row">
                     <div class="col s12 m6 xl5">
                        <div class="card-panel center img-block">
                           
                        </div>
                     </div>
                     <div class="col s12 m6 xl7">
                        <div class="card-panel product-info">
                           
                        </div>
                     </div>
                  </div>-->			  
				  </div>
                  
               </div>
            </div>
			
			<!-- Modal-->
				<div class="modal grey lighten-3" id="javaj2eemodal">
				  <!-- Modal content-->
				<div class="modal-content">
				<i class="material-icons modal-action modal-close waves-effect waves-circle waves-light grey lighten-2 close-icon">close</i>
				  <div class="card-panel">
                     <!-- <ul class="tabs href-underline">
                        <li class="tab"><a class="blue-grey-text text-darken-3 text-bold waves-effect waves-default active" href="#whoweare" rel="nofollow">Who We Are</a></li>
                        <li class="tab"><a class="blue-grey-text text-darken-3 text-bold waves-effect waves-default" href="#ourfaculties" rel="nofollow">Our Faculties</a></li>
                        <li class="tab"><a class="blue-grey-text text-darken-3 text-bold waves-effect waves-default" href="#ourobjectives" rel="nofollow">Our Objectives</a></li>
						<li class="tab"><a class="blue-grey-text text-darken-3 text-bold waves-effect waves-default" href="#whytojoinus" rel="nofollow">Why to Join Us</a></li>
                     </ul>-->
                     <div id="whoweare" class="section" itemprop="description">
					 <h4>Java/J2EE</h4>
					 <div class="divider"></div>
                        <p>Java is a general-purpose, class-based, object-oriented computer programming language that was designed by James Gosling at Sun Microsystems in 1995. Key Features of Java</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>Platform Independent</li>
						  <li><i class="material-icons">grade</i>Usability of Java</li>
						  <li><i class="material-icons">grade</i>Open Source</li>
						  <li><i class="material-icons">grade</i>Android</li>
						  <li><i class="material-icons">grade</i>Hadoop in Java</li>
						</ul>
						</p>Despite having a tough competition on the server side from Microsoft and other companies, Java is doing extremely well on mobile platforms, thanks to Android! It has also been the primary language for Hadoop Developers.</p>
                        <!--<h2>sdfsdf2</h2>
                        <div class="divider"></div>
                        <div class="row">
                           <div class="col s12 l6">
                              <p>sdfasdfasdfasd</p>
                           </div>
                           <div class="col s12 l6">
                              <figure>
                                 <img class="responsive-img lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="https://materialize.myefforts.ru/image/catalog/goods/smartphones/iphone/iphone-7-plus/iphone-7-plus-red-banner-1.jpg" alt="iPhone 7 Plus (PRODUCT)RED™ Special Edition 256GB">
                                 <figcaption class="center">
                                    iPhone 7 (PRODUCT)RED™ Special Edition
                                 </figcaption>
                              </figure>
                           </div>
                        </div>-->
						<h4>WHO SHOULD ATTEND?</h4>
					 <div class="divider"></div>
                        <p>This course is designed for professionals and freshers aspiring to become:</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>Youngsters who want to kick-start their career are the key beneficiaries of this course</li>
						  <li><i class="material-icons">grade</i>Programmers</li>
						  <li><i class="material-icons">grade</i>Web Developers</li>
						  <li><i class="material-icons">grade</i>Web Designers</li>
						  <li><i class="material-icons">grade</i>Database Administrators</li>
						</ul>
                     </div>
					 
					 
					 <div id="ourobjectives" class="section" itemprop="description">
					 <h4>KEY FEATURES</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>100% Job Assistance.</li>
<li><i class="material-icons">grade</i>Learn from the basics & advance level of Java programming language.</li>
<li><i class="material-icons">grade</i>Personal attention given to each & every participant during the training program</li>
<li><i class="material-icons">grade</i>Live Projects for practice & getting practical knowledge of programming.</li>
<li><i class="material-icons">grade</i>Batches with limited seats.</li>
<li><i class="material-icons">grade</i>Weekend batches as per your suitability.</li>
<li><i class="material-icons">grade</i>The Session will give full hands-on in Java Programming.</li>
</ul>
                     </div>
					 <div id="whoweare" class="section" itemprop="description">
					 <h4>TOPICS COVERED</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>1. Introduction to Java
Learning Objectives - In this module, you will learn about Java architecture, advantages of Java, develop the code with various data types, conditions and loops.

Topics - Introduction to Java, Bytecode, Class Files, Compilation Process, Data types and Operations, if conditions, Loops - for, while and do while.</li>

<li><i class="material-icons">grade</i>2. Data Handling and Functions
Learning Objectives - In this module, you will learn how to code with arrays, functions and strings.

Topics - Arrays - Single Dimensional and Multidimensional arrays, Functions, Function with Arguments, Function Overloading, Concept of Static Polymorphism, String Handling - String, Stringbuffer Classes.</li>

<li><i class="material-icons">grade</i>3. Object Oriented Programming in Java
Learning Objectives - In this module, you will learn object oriented programming through Java using Classes, Objects and various Java concepts like Abstract, Final etc.

Topics - OOPS in Java: Concept of Object Orientation, Attributes and Methods, Classes and Objects.
Methods and Constructors - Default Constructors and Constructors with Arguments.
Inheritance, Abstract, Final and Static.</li>
<li><i class="material-icons">grade</i>4. Packages and Multi Threading
Learning Objectives - In this module, you will learn about packages in Java and scope specifiers of Java. You will also learn exception handling and how multi threading works in Java.

Topics - Packages and Interfaces.
Access Specifiers: Public, Private, Protected and Package.
Exception Handling: Try, Catch, Finally, Throw and Throws.
Multi Threading: Runnable Interface, Extending a Thread Class, Synchronization in Threads.</li>
<li><i class="material-icons">grade</i>5. Collections
Learning Objectives - In this module, you will learn how to write code with Wrapper Classes, Inner Classes and Applet Programs. How to use io, lang and util packages of Java and very important topic of Java which is Collections.

Topics - Wrapper Classes and Inner Classes: Integer, Character, Boolean, Float etc.
Applet Programs: How to write UI programs with Applet, Java.lang, Java.io, Java.util.
Collections: ArrayList, Vector, HashSet, TreeSet, HashMap, HashTable.</li>
<li><i class="material-icons">grade</i>6. XML
Learning Objectives - In this module, you will learn how to write XML files and how to parse XML files using DOM and SAX in Java.

Topics - Introduction to XML, Writing XML files, DOM Parser - Writing into an XML file and Parsing an XML file, SAX Parser, XSL.</li>
<li><i class="material-icons">grade</i>7. JDBC
Learning Objectives - In this module, you will learn SQL, Architecture of JDBC, Different drivers of JDBC and to write code in JDBC to communicate with Database.

Topics - Introduction to SQL: Connect, Insert, Update, Delete, Select, Introduction to JDBC and Architecture of JDBC.

Types of Drivers: Type 1/2/3/4 drivers, Insert/Update/Delete/Select Operations using JDBC, Batch Processing Transaction. Management: Commit and Rollback.</li>
<li><i class="material-icons">grade</i>8. Servlets
Learning Objectives - In this module, you will learn Web Technologies and developing applications using Servlets.

Topics - Introduction to Web Technologies.

Type of Servlets: Generic and Http Servlet. Request Dispatchers: Forward and Include, 4 types of Session Tracking and Filters.</li>
<li><i class="material-icons">grade</i>9. JSP
Learning Objectives - In this module, you will learn how to develop code with JSP.

Topics - Introduction to JSP, Architecture of JSP, tags (Scripts, declarative, expression), Implicit objects, JSP Directives, JSP and JDBC.</li>
</ul>
</div>
					
					 <!--
						<div class="post-footer grey lighten-4"><i class="material-icons">local_offer</i>:&nbsp;
                        <a class="chip waves-effect waves-default" href="index942d.html?route=product/search&amp;tag=apple" rel="nofollow">apple</a>,
                        <a class="chip waves-effect waves-default" href="indexeec5.html?route=product/search&amp;tag=iphone%7" rel="nofollow">iphone 7</a>,
                        <a class="chip waves-effect waves-default" href="index5c69.html?route=product/search&amp;tag=plus" rel="nofollow">plus</a>,
                        <a class="chip waves-effect waves-default" href="index2914.html?route=product/search&amp;tag=red" rel="nofollow">red</a>,
                        <a class="chip waves-effect waves-default" href="indexa1c0.html?route=product/search&amp;tag=256gb" rel="nofollow">256gb</a>,
                        <a class="chip waves-effect waves-default" href="index44f1.html?route=product/search&amp;tag=%d0%b0%d0%b9%d1%84%d0%be%d0%bd" rel="nofollow">айфон</a>,
                        <a class="chip waves-effect waves-default" href="indexec7b.html?route=product/search&amp;tag=%d1%8d%d0%bf%d0%bf%d0%bb" rel="nofollow">эппл</a>
                     </div>
					 -->
                  </div>
				  </div>
				  </div>
				  
				<!-- Modal-->
				<div class="modal grey lighten-3" id="springbootmodal">
				  <!-- Modal content-->
				<div class="modal-content">
				<i class="material-icons modal-action modal-close waves-effect waves-circle waves-light grey lighten-2 close-icon">close</i>
				  <div class="card-panel">
                     <div id="whoweare" class="section" itemprop="description">
					 <h4>Spring Boot</h4>
					 <div class="divider"></div>
                        <p>Spring Boot is a brand new framework from the team at Pivotal, designed to simplify the bootstrapping and development of a new Spring application. The framework takes an opinionated approach to configuration, freeing developers from the need to define boilerplate configuration. It provides Dependency Injection, Aspect Oriented Programming and support for unit testing. This gives the developer time to work on main business logic rather than worrying about non-application code. Spring makes the application development fast and increases the productivity of developers. Key Features of Spring Boot</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>Starter modules for simplifying dependency configuration</li>
						  <li><i class="material-icons">grade</i>Auto-configuration whenever possible</li>
						  <li><i class="material-icons">grade</i>Embedded, built-in Tomcat, Jetty or Undertow</li>
						  <li><i class="material-icons">grade</i>Stand-alone Spring applications</li>
						  <li><i class="material-icons">grade</i>Production-ready features such as metrics, health checks, and externalized configuration</li>
						<li><i class="material-icons">grade</i>No requirement for XML configuration</li>
						</ul>
						<h4>WHO SHOULD ATTEND?</h4>
					 <div class="divider"></div>
                        <p>This course is designed for professionals and freshers aspiring to become:</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>Youngsters who want to kick-start their career are the key beneficiaries of this course</li>
						  <li><i class="material-icons">grade</i>Programmers</li>
						  <li><i class="material-icons">grade</i>Web Developers</li>
						  <li><i class="material-icons">grade</i>Web Designers</li>
						  <li><i class="material-icons">grade</i>Database Administrators</li>
						</ul>
                     </div>
					 
					 
					 <div id="ourobjectives" class="section" itemprop="description">
					 <h4>KEY FEATURES</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>100% Job Assistance.</li>
<li><i class="material-icons">grade</i>Learn from the basics & advance level of Springboot programming.</li>
<li><i class="material-icons">grade</i>Personal attention given to each & every participant during the training program</li>
<li><i class="material-icons">grade</i>Live Projects for practice & getting practical knowledge of programming.</li>
<li><i class="material-icons">grade</i>Batches with limited seats.</li>
<li><i class="material-icons">grade</i>Weekend batches as per your suitability.</li>
<li><i class="material-icons">grade</i>The Session will give full hands-on in Springboot Programming.</li>
</ul>
                     </div>
					 <div id="whoweare" class="section" itemprop="description">
					 <h4>TOPICS COVERED</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>1. Spring Configurations.</li>

<li><i class="material-icons">grade</i>2. Aspect Oriented Programming and DAO.</li>

<li><i class="material-icons">grade</i>3. Data Access.</li>
<li><i class="material-icons">grade</i>4. Spring Web.</li>
<li><i class="material-icons">grade</i>5. Integrating Struts 2, JSF with Spring, Spring Web Flow.</li>
<li><i class="material-icons">grade</i>6. Spring Security.</li>
<li><i class="material-icons">grade</i>7. Spring Integration.</li>
</ul>
</div>
                  </div>
				  </div>
				  </div>
				  
				  <!-- Modal-->
				<div class="modal grey lighten-3" id="hibernatemodal">
				  <!-- Modal content-->
				<div class="modal-content">
				<i class="material-icons modal-action modal-close waves-effect waves-circle waves-light grey lighten-2 close-icon">close</i>
				  <div class="card-panel">
                     <div id="whoweare" class="section" itemprop="description">
					 <h4>Hibernate</h4>
					 <div class="divider"></div>
                        <p>Hibernate is a Java framework that simplifies the development of Java application to interact with the database. It is an open source, lightweight, ORM (Object Relational Mapping) tool. In this module, you will understand Java Persistence and basic concepts of ORM and its necessities, introduction to Hibernate and building ORM with Hibernate. Key Features of Hibernate.</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>Open Source and Lightweight.</li>
						  <li><i class="material-icons">grade</i>Fast Performance.</li>
						  <li><i class="material-icons">grade</i>Database Independent Query.</li>
						  <li><i class="material-icons">grade</i>Automatic Table Creation.</li>
						  <li><i class="material-icons">grade</i>Simplifies Complex Join.</li>
						   <li><i class="material-icons">grade</i>Provides Query Statistics and Database Status.</li>
						</ul>
						<h4>WHO SHOULD ATTEND?</h4>
					 <div class="divider"></div>
                        <p>This course is designed for professionals and freshers aspiring to become:</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>Youngsters who want to kick-start their career are the key beneficiaries of this course</li>
						  <li><i class="material-icons">grade</i>Programmers</li>
						  <li><i class="material-icons">grade</i>Web Developers</li>
						  <li><i class="material-icons">grade</i>Web Designers</li>
						  <li><i class="material-icons">grade</i>Database Administrators</li>
						</ul>
                     </div>
					 
					 
					 <div id="ourobjectives" class="section" itemprop="description">
					 <h4>KEY FEATURES</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>100% Job Assistance.</li>
<li><i class="material-icons">grade</i>Learn from the basics & advance level of Hibernate.</li>
<li><i class="material-icons">grade</i>Personal attention given to each & every participant during the training program</li>
<li><i class="material-icons">grade</i>Live Projects for practice & getting practical knowledge of programming.</li>
<li><i class="material-icons">grade</i>Batches with limited seats.</li>
<li><i class="material-icons">grade</i>Weekend batches as per your suitability.</li>
<li><i class="material-icons">grade</i>The Session will give full hands-on in Hibernate Programming.</li>
</ul>
                     </div>
					 <div id="whoweare" class="section" itemprop="description">
					 <h4>TOPICS COVERED</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>1. Introduction to ORM and Hibernate.</li>

<li><i class="material-icons">grade</i>2. Persistence and Session Factory.</li>

<li><i class="material-icons">grade</i>3. Association, Mapping & Inheritance.</li>
<li><i class="material-icons">grade</i>4. Criteria and Query Language.</li>
<li><i class="material-icons">grade</i>5. Transactions, Filter and Performance.</li>
<li><i class="material-icons">grade</i>6. Search & Validation Framework.</li>
</ul>
</div>
                  </div>
				  </div>
				  </div>
				  
				  <!-- Modal-->
				<div class="modal grey lighten-3" id="angularmodal">
				  <!-- Modal content-->
				<div class="modal-content">
				<i class="material-icons modal-action modal-close waves-effect waves-circle waves-light grey lighten-2 close-icon">close</i>
				  <div class="card-panel">
                     <div id="whoweare" class="section" itemprop="description">
					 <h4>Angular CLI</h4>
					 <div class="divider"></div>
                        <p>Angular is a JavaScript framework which is used to create scalable, enterprise, and performant client side web applications. It provides an ecosystem for development of client side web applications. The ecosystem for development may include external tools or libraries as well. The ecosystem process includes project bootstrapping, development operations/tools, testing, and build support.Key Features of Angular CLI.</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>Cross Platform.</li>
						  <li><i class="material-icons">grade</i>Fast Performance.</li>
						  <li><i class="material-icons">grade</i>Productivity.</li>
						  <li><i class="material-icons">grade</i>Maintainability.</li>
						  <li><i class="material-icons">grade</i>Modularity.</li>
						   <li><i class="material-icons">grade</i>Consistency.</li>
						   <li><i class="material-icons">grade</i>Catch Errors Early.</li>
						</ul>
						<h4>WHO SHOULD ATTEND?</h4>
					 <div class="divider"></div>
                        <p>This course is designed for professionals and freshers aspiring to become:</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>Youngsters who want to kick-start their career are the key beneficiaries of this course</li>
						  <li><i class="material-icons">grade</i>Programmers</li>
						  <li><i class="material-icons">grade</i>Web Developers</li>
						  <li><i class="material-icons">grade</i>Web Designers</li>
						  <li><i class="material-icons">grade</i>Database Administrators</li>
						</ul>
                     </div>
					 
					 
					 <div id="ourobjectives" class="section" itemprop="description">
					 <h4>KEY FEATURES</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>100% Job Assistance.</li>
<li><i class="material-icons">grade</i>Learn from the basics & advance level of Angular CLI.</li>
<li><i class="material-icons">grade</i>Personal attention given to each & every participant during the training program</li>
<li><i class="material-icons">grade</i>Live Projects for practice & getting practical knowledge of programming.</li>
<li><i class="material-icons">grade</i>Batches with limited seats.</li>
<li><i class="material-icons">grade</i>Weekend batches as per your suitability.</li>
<li><i class="material-icons">grade</i>The Session will give full hands-on in Angular CLI Programming.</li>
</ul>
                     </div>
					 <div id="whoweare" class="section" itemprop="description">
					 <h4>TOPICS COVERED</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>1. Introduction to JavaScript MVC Framework & Angular.</li>

<li><i class="material-icons">grade</i>2. Components and DOM Interactions.</li>

<li><i class="material-icons">grade</i>3. Components and Dependency Injection.</li>
<li><i class="material-icons">grade</i>4. Routes, Inbuilt Directives and Pipes.</li>
<li><i class="material-icons">grade</i>5. Custom Directives and Pipes.</li>
<li><i class="material-icons">grade</i>6. Third-party Library Integration, Other APIs.</li>
<li><i class="material-icons">grade</i>7. Unit Testing and Angular-CLI.</li>
</ul>
</div>
                  </div>
				  </div>
				  </div>
				  
				   <!-- Modal-->
				<div class="modal grey lighten-3" id="datasciencemodal">
				  <!-- Modal content-->
				<div class="modal-content">
				<i class="material-icons modal-action modal-close waves-effect waves-circle waves-light grey lighten-2 close-icon">close</i>
				  <div class="card-panel">
                     <div id="whoweare" class="section" itemprop="description">
					 <h4>Data Science</h4>
					 <div class="divider"></div>
                        <p>Data Science Training lets you gain expertise in Machine Learning Algorithms like K-Means Clustering, Decision Trees, Random Forest, and Naive Bayes using R. Data Science Training encompasses a conceptual understanding of Statistics, Time Series, Text Mining and an introduction to Deep Learning. Throughout this Data Science Course, you will implement real-life use-cases on Media, Healthcare, Social Media, Aviation and HR. Key Features of Data Science.</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>Easily identifies trends and patterns.</li>
						  <li><i class="material-icons">grade</i>No human intervention needed (automation).</li>
						  <li><i class="material-icons">grade</i>Continuous Improvement.</li>
						  <li><i class="material-icons">grade</i>Handling multi-dimensional and multi-variety data.</li>
						  <li><i class="material-icons">grade</i>Wide Applications.</li>
						</ul>
						<h4>WHO SHOULD ATTEND?</h4>
					 <div class="divider"></div>
                        <p>This course is designed for professionals and freshers aspiring to become:</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>Youngsters who want to kick-start their career are the key beneficiaries of this course</li>
						  <li><i class="material-icons">grade</i>Programmers</li>
						  <li><i class="material-icons">grade</i>Web Developers</li>
						  <li><i class="material-icons">grade</i>Web Designers</li>
						  <li><i class="material-icons">grade</i>Database Administrators</li>
						</ul>
                     </div>
					 
					 
					 <div id="ourobjectives" class="section" itemprop="description">
					 <h4>KEY FEATURES</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>100% Job Assistance.</li>
<li><i class="material-icons">grade</i>Learn from the basics & advance level of Data Science.</li>
<li><i class="material-icons">grade</i>Personal attention given to each & every participant during the training program</li>
<li><i class="material-icons">grade</i>Live Projects for practice & getting practical knowledge of programming.</li>
<li><i class="material-icons">grade</i>Batches with limited seats.</li>
<li><i class="material-icons">grade</i>Weekend batches as per your suitability.</li>
<li><i class="material-icons">grade</i>The Session will give full hands-on in R Programming.</li>
</ul>
                     </div>
					 <div id="whoweare" class="section" itemprop="description">
					 <h4>TOPICS COVERED</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>1. Introduction to Data Science.</li>

<li><i class="material-icons">grade</i>2. Statistical Inference.</li>

<li><i class="material-icons">grade</i>3. Data Extraction, Wrangling and Exploration.</li>
<li><i class="material-icons">grade</i>4. Introduction to Machine Learning.</li>
<li><i class="material-icons">grade</i>5. Classification Techniques.</li>
<li><i class="material-icons">grade</i>6. Unsupervised Learning.</li>
<li><i class="material-icons">grade</i>7. Recommender Engines.</li>
<li><i class="material-icons">grade</i>8. Text Mining.</li>
<li><i class="material-icons">grade</i>9. Time Series.</li>
<li><i class="material-icons">grade</i>10. Deep Learning.</li>
</ul>
</div>
                  </div>
				  </div>
				  </div>
				  
				  <!-- Modal-->
				<div class="modal grey lighten-3" id="aimodal">
				  <!-- Modal content-->
				<div class="modal-content">
				<i class="material-icons modal-action modal-close waves-effect waves-circle waves-light grey lighten-2 close-icon">close</i>
				  <div class="card-panel">
                     <div id="whoweare" class="section" itemprop="description">
					 <h4>Artificial Intelligence</h4>
					 <div class="divider"></div>
                        <p>Deep Learning in TensorFlow with Python Certification Training is curated by industry professionals as per the industry requirements & demands. You will master the concepts such as SoftMax function, Autoencoder Neural Networks, Restricted Boltzmann Machine (RBM) and work with libraries like Keras & TFLearn. The course has been specially curated by industry experts with real-time case studies. Key Features of Artificial Intelligences.</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>No need for feature engineering.</li>
						  <li><i class="material-icons">grade</i>Best results with unstructured data.</li>
						  <li><i class="material-icons">grade</i>No need for labeling of data.</li>
						  <li><i class="material-icons">grade</i>Efficient at delivering high-quality results.</li>
						</ul>
						<h4>WHO SHOULD ATTEND?</h4>
					 <div class="divider"></div>
                        <p>This course is designed for professionals and freshers aspiring to become:</p>
						<ul style="list-style-type:square;">
						  <li><i class="material-icons">grade</i>Youngsters who want to kick-start their career are the key beneficiaries of this course</li>
						  <li><i class="material-icons">grade</i>Programmers</li>
						  <li><i class="material-icons">grade</i>Web Developers</li>
						  <li><i class="material-icons">grade</i>Web Designers</li>
						  <li><i class="material-icons">grade</i>Database Administrators</li>
						</ul>
                     </div>
					 
					 
					 <div id="ourobjectives" class="section" itemprop="description">
					 <h4>KEY FEATURES</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>100% Job Assistance.</li>
<li><i class="material-icons">grade</i>Learn from the basics & advance level of Deep Learning.</li>
<li><i class="material-icons">grade</i>Personal attention given to each & every participant during the training program</li>
<li><i class="material-icons">grade</i>Live Projects for practice & getting practical knowledge of programming.</li>
<li><i class="material-icons">grade</i>Batches with limited seats.</li>
<li><i class="material-icons">grade</i>Weekend batches as per your suitability.</li>
<li><i class="material-icons">grade</i>The Session will give full hands-on in deep learning algorithms.</li>
</ul>
                     </div>
					 <div id="whoweare" class="section" itemprop="description">
					 <h4>TOPICS COVERED</h4>
					 <div class="divider"></div>
					 <ul>
					 <li><i class="material-icons">grade</i>1. Introduction to Deep Learning.</li>

<li><i class="material-icons">grade</i>2. Understanding Neural Networks with TensorFlow.</li>

<li><i class="material-icons">grade</i>3. Deep dive into Neural Networks with TensorFlow.</li>
<li><i class="material-icons">grade</i>4. Master Deep Networks.</li>
<li><i class="material-icons">grade</i>5. Convolutional Neural Networks (CNN).</li>
<li><i class="material-icons">grade</i>6. Recurrent Neural Networks (RNN).</li>
<li><i class="material-icons">grade</i>7. Restricted Boltzmann Machine (RBM) and Autoencoders.</li>
<li><i class="material-icons">grade</i>8. Keras API.</li>
<li><i class="material-icons">grade</i>9. TFLearn API.</li>
</ul>
</div>
                  </div>
				  </div>
				  </div>
      </main>
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