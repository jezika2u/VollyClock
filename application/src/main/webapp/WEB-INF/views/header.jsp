<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.io.*,java.util.*" %>

<header>   
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container-fuid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-main">
        <span class="sr-only">Toggle Navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index"><img src="resources/img/navLogo2.png" width="200">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="navbar-collapse-main">
      <ul class="nav navbar-nav navbar-right">
        <li><a class="active" href="index">Home</a></li>
        <li><a href="http://localhost:3500/vollyClock/#about">About</a></li>
<!--         <li><a href="#">Testimonials</a></li> -->
		<li><a href="contact">Contact</a></li>
		
		<c:if test="${loggedInUser.role eq 'Volunteer'}">
 				<li><a href="clock" ><i class="icon-user"></i>Clock</a></li>
 				</c:if>
 				
 		<c:if test="${loggedInUser.role eq 'Admin'}">
 				<li><a href="admin" >Dashboard</a></li>
 				</c:if>
		
		<c:if test="${not empty loggedInUser}">
 				<li><a href="profile" ><i class="icon-user"></i>My Profile</a></li>
 			
                <li><a href="logout" >Logout</a></li>
              </c:if>
              
             

		<c:if test="${empty loggedInUser}">
                <li><a href="loginRegister"><i class="icon-user"></i> LogIn</a></li>
                <li><a href="loginRegister">Register</a></li>
                </c:if>
                
                
              </ul>
		
		
<!--         <li><a href="loginRegister">LogIn</a></li>
      </ul> -->
    </div>
  </div>
</nav>
</header> 