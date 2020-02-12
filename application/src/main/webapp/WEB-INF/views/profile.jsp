<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>




<c:if test="${empty loggedInUser}">
<%response.sendRedirect("loginRegister");%>
</c:if>
<!DOCTYPE html>
<html>
<head>
  <title>VollyClock</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="resources/theme/css/style.css" rel="stylesheet" />
  
  

  
  
</head>

<body>

<!-- HEADER -->
<jsp:include page="header.jsp"/>
<!-- HEADER -->


<div class="container">
    <div class="row">
		<div class="col-md-3">
			<div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
				
				                 
                    <c:if test="${not empty loggedInUser.image}">
                    <img src="static/img/users/${loggedInUser.id}/profile/${loggedInUser.image}" class="img-responsive userpic" alt="">
                    </c:if>
                    <c:if test="${empty loggedInUser.image}">
                    <img src="https://static.change.org/profile-img/default-user-profile.svg" alt="">
                    </c:if>
                    
					
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						${loggedInUser.fname} ${loggedInUser.lname}
					</div>
					<div class="profile-usertitle-job">
						${loggedInUser.role}
					</div>
				</div>
				<!-- END SIDEBAR USER TITLE -->
				<!-- SIDEBAR BUTTONS -->
				<div class="profile-userbuttons">
<%-- 				     <div class="span3 text-center">
        
						        <c:if test="${not empty loggedInUser.image}">
						<img src="static/img/users/${loggedInUser.id}/profile/${loggedInUser.image}" 
						alt="Profile Image" style="height:150px; width: auto;">
						</c:if>
						<span>${error}</span>  
						<c:if test="${not empty loggedInUser.image}">
						<a  href="#" data-toggle="modal" data-target="#add-images" class="btn btn-dark btn-sm">
						Change Photo <i class="fa fa-pencil"></i></a>
						</c:if>
						<c:if test="${empty loggedInUser.image}">
						<a  href="#" data-toggle="modal" data-target="#add-images" 
						class="btn btn-dark btn-sm">
						Add Image</a>
						</c:if>
						 
					 </div> --%>
					 <form enctype="multipart/form-data" action="addimages" method= "POST">
					 <!-- <input type="file" id="real-btn" class="hidden-field" /> -->
					<!-- <button type="button" id="my-btn" class="btn btn-dark btn-sm">Upload Profile Picture</button> -->
					 <div class="control-group">
                    
                    <div class="controls">
                    <label>Please select:</label>
                    <input type="hidden" name="id" value="${loggedInUser.id}">
                    <input id="file" type="file" id="two" name="file" multiple>
                    </div>
                    </div>
                  
                  <div class="control-group">
                    <div class="controls">
                      <button type="submit" class="btn">Upload</button>
                    </div>
                  </div>
                </form>
					
			
					
					
				</div>
				</div>
				<div class="text-center">
				<h3>${msg}</h3>
				</div>
				</div>
			
			
    				
						<div class="col-md-6">
					
						
						<table class= "profile-details">
		 
						   <tr class="detail-table">
						    <td class="detail-table"><h6>EMAIL</h6></td>
						    <td class="detail-table">${loggedInUser.email}<%-- <c:out value="${user.email}"/> --%></td>
						    
						  </tr>
						  <tr class="detail-table">
						    <td class="detail-table"><h6>PHONE</h6></td>
						    <td class="detail-table">${loggedInUser.phone}<%-- <c:out value="${user.phone}"/> --%></td>
						    
						  </tr>
						  <tr class="detail-table">
						    <td class="detail-table"><h6>ADDRESS</h6></td>
						    <td class="detail-table">   ${loggedInUser.address}<%-- <c:out value="${user.address}"/> --%></td>
						    
						  </tr> 
						</table> 
				
				</div>
				
				<div class="profile_cards">
				<div class="col-md-3">
				
				
				<div class="container">
    			<div class="row-panel">
				<div class="my-panel">
				<div class="panel panel-default">
				  <div class="panel-heading">VOLUNTEER HOURS</div>
				  <div class="panel-body"><h1 class= "panel-text">0</h1></div>
				  <div class="panel-footer"> </div>
				</div>
				</div>
				</div>
				<div class="row-panel">
				<div class="my-panel">
				<div class="panel panel-default">
				  <div class="panel-heading">MONETARY EQUIVALENT</div>
				  <div class="panel-body"><h1 class= "panel-text">$0.00</h1></div>
				  <div class="panel-footer"> </div>
				</div>
				</div>
				</div>
				</div>
			
				
				</div>
				</div>
		
				
				
				</div>
				
				
				
				</div>
			

<!-- FOOTER -->
<jsp:include page="footer.jsp"/>
<!-- FOOTER -->

</body>
</html>