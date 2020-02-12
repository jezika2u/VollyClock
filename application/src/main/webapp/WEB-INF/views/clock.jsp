<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Clock</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="resources/theme/css/style.css" rel="stylesheet" />



</head>

<body class="clock">


	<!-- HEADER -->
	<jsp:include page="header.jsp" />
	<!-- HEADER -->





	<H1 id="clockText">00 : 00 : 00</H1>
	<c:if test="${isClockedIn}">
		<div class="btnHandle">
			<form:form action="punchOut" type="POST">
				<input type="submit" class="btn btn-default btn-lg" id="clockBtn"
					Value="Punch Out" />
			</form:form>
		</div>
	</c:if>
	<c:if test="${!isClockedIn}">
		<div class="btnHandle">
			<form:form action="punch" type="POST">
				<input type="submit" class="btn btn-default btn-lg" id="clockBtn"
					Value="Punch IN" />
			</form:form>
		</div>
	</c:if>
	
	<h3>${msg}</h3>
	<%-- <input id="UserId" name="UserId" type="hidden" value="${loggedInUser.id}"> --%>





	<!-- FOOTER -->
	<jsp:include page="footer.jsp" />
	<!-- FOOTER -->



	<script src="resources/theme/js/clock.js"></script>

</body>
</html>