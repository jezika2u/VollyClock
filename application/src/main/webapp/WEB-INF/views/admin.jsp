<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.io.*,java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="resources/theme/css/dashboard.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/e2fe73621b.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>


<title>DASHBOARD</title>
</head>
<body>

<!-- navbar -->
<nav class="navbar navbar-expand-md navbar-light">
<button class="navbar-toggler ml-auto mb-2 bg-light" type= "button" data-toggle="collapse"
data-target="#mynavbar">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="mynavbar">
	<div class="container-fluid">
		<div class="row">
		
		
		<!-- SIDEBAR -->
		<div class="col-xl-2 col-lg-3 col-md-4 sidebar fixed-top">
		<a href="#" class="navbar-brand text-white d-block mx-auto
		text-center py-3 mb-4 bottom-border"><img src="resources/img/navLogo2.png" width="200"></a>
		
		<div class="bottom-border pb-3">
		<img src="static/img/users/${loggedInUser.id}/profile/${loggedInUser.image}" 
		width="50" class= "rounded-circle mr-3">
		<a href="profile" class="text-white">${loggedInUser.fname} ${loggedInUser.lname}</a>
		</div>
		<ul class="navbar-nav flex-column mt-4">
		
		<li class="nav-item"><a href="#" class="nav-link text-white 
		p-3 mb-2 current">
		<i class="fa fa-home text-light fa-lg mr-3"></i>Dashboard</a></li>
		
		<li class="nav-item"><a href="profile" class="nav-link text-white 
		p-3 mb-2 sidebar-link">
		<i class="fa fa-user text-light fa-lg mr-3"></i>Profile</a></li>
		
		</ul>
		</div>
		
		<!-- END SIDEBAR -->
		
		
		
		
		<!-- TOP NAV -->
		<div class="col-xl-10 col-lg-9 col-md-8 ml-auto fixed-top py-2 top-nav">
			<div class="row">
			
				<div class="col-md-4">
				<h4 class="text-light text-uppercase mb-0">Dashboard</h4>
				</div>
			
				<div class="col-xl-5 col-lg-5 col-md-3">
				
				</div>
				
				<div class="col-md-3">
				      <ul class="navbar-nav">
				        <li class="nav-item"><a class="nav-link text-light" href="index">Home</a></li>
				 		<li class="nav-item"><a class="nav-link text-light" href="profile" ><i class="icon-user"></i>Profile</a></li>
				        <li class="nav-item"><a class="nav-link text-light" href="logout" >Logout</a></li>
				        </ul>
				         
              
				</div>
			</div>
		</div>
		<!-- END TOP NAV -->
		
		
		</div>
	</div>
</div>
</nav>
<!-- end of navbar -->




<!-- CARDS -->

<section>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-10 col-lg-9 col-md-8 ml-auto">
				<div class="row pt-md-5 mt-md-3 mb-5">
					<div class="col-xl-3 col-sm-6 p-2">
						
						<div class="card card-common">
							<div class="card-body">
							<div class="d-flex justify-content-between">
								<i class="fa fa-users fa-3x"></i>
								<div class="text-right text-secondary">
									<h5>VOLUNTEERS</h5>
									<h3>27</h3>
								</div>
							</div>
							</div>
							<div class="card-footer text-secondary">
							<i class="fa fa-refresh mr-3"></i>
							<span>Updated Now</span>
							</div>
						</div>
					
					</div>
					<div class="col-xl-3 col-sm-6 p-2">
						
						<div class="card card-common">
							<div class="card-body">
							<div class="d-flex justify-content-between">
								<i class="fa fa-clock-o fa-3x"></i>
								<div class="text-right text-secondary">
									<h5>HOURS TODAY</h5>
									<h3>43</h3>
								</div>
							</div>
							</div>
							<div class="card-footer text-secondary">
							<i class="fa fa-refresh mr-3"></i>
							<span>Updated Now</span>
							</div>
						</div>
						
					</div>
					<div class="col-xl-3 col-sm-6 p-2">
											<div class="card card-common">
							<div class="card-body">
							<div class="d-flex justify-content-between">
								<i class="fa fa-clock-o fa-3x"></i>
								<div class="text-right text-secondary">
									<h5>TOTAL HOURS</h5>
									<h3>8,043</h3>
								</div>
							</div>
							</div>
							<div class="card-footer text-secondary">
							<i class="fa fa-refresh mr-3"></i>
							<span>Updated Now</span>
							</div>
						</div>
					
					</div>
					<div class="col-xl-3 col-sm-6 p-2">
						<div class="card card-common">
							<div class="card-body">
							<div class="d-flex justify-content-between">
								<i class="fa fa-money fa-3x"></i>
								<div class="text-right text-secondary">
									<h5>TOTAL HOURS IN</h5>
									<h3>$200,543.17</h3>
								</div>
							</div>
							</div>
							<div class="card-footer text-secondary">
							<i class="fa fa-refresh mr-3"></i>
							<span>Updated Now</span>
							</div>
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- END CARDS -->







<!-- CHARTS -->

<!-- <canvas id="chart" width="400" height="400"></canvas> -->
<section>
	<div class="container-fluid" >
		<div class="row">
			<div class="col-xl-9 col-lg-9 col-md-8 ml-auto">
				<div class="row pt-md-1 mt-md-1 mb-5">
					<div class="col-xl-5 col-sm-6 p-2">
		<canvas id="myChart" width="100" height="100"></canvas>
		<script>
		var ctx = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(ctx, {
		    type: 'bar',
		    data: {
		        labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
		        datasets: [{
		            label: '# of Volunteers',
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [
		                'rgba(45, 45, 45, 0.2)',
		                'rgba(45, 45, 45, 0.2)',
		                'rgba(45, 45, 45, 0.2)',
		                'rgba(45, 45, 45, 0.2)',
		                'rgba(45, 45, 45, 0.2)',
		                'rgba(45, 45, 45, 0.2)'
		            ],
		            borderColor: [
		                'rgba(83, 0, 0, 1)',
		                'rgba(83, 0, 0, 1)',
		                'rgba(83, 0, 0, 1)',
		                'rgba(83, 0, 0, 1)',
		                'rgba(83, 0, 0, 1)',
		                'rgba(83, 0, 0, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero: true
		                }
		            }]
		        }
		    }
		});
		</script>
	</div>
	
		<div class="col-xl-5 col-sm-6 p-2">
		<canvas id="Chart" width="100" height="100"></canvas>
		<script>
		var ctx = document.getElementById('Chart').getContext('2d');
		var myChart = new Chart(ctx, {
		    type: 'line',
		    data: {
		        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
		        datasets: [{
		            label: '# of Hours',
		            data: [12, 19, 3, 5, 2, 3, 12, 19, 3, 5, 2, 3],
	 	            backgroundColor: [
		                'rgba(83, 0, 0, 0.2)',
		              
		            ], 
		            borderColor: [
		                'rgba(45, 45, 45, 1)',
	
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero: true
		                }
		            }]
		        }
		    }
		});
		</script>
	</div>
	
	
	</div>
	</div>
	</div>
	</div>
</section>
<!-- END CHARTS -->





<!-- TABLES -->
<section>
	<div class="container-fluid">
		<div class="row mb-5">
			<div class="col-xl-10 col-lg-9 col-md-8 ml-auto">
				<div class="row">
					<div class="col-12">
<!-- 					<h3 class="text-muted text-center mb-3">VOLUNTEERS</h3>
						<table class="table table-striped bg-light text-center">
							<thead>
								<tr class="text-muted">
									<th>Img</th>
									<th>Name</th>
									<th>Hours</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><img src="https://static.change.org/profile-img/default-user-profile.svg" 
		width="30" class= "rounded-circle mr-3"></th>
									<th>Jane Doe</th>
									<th>97</th>
								</tr>
								<tr>
									<th><img src="https://static.change.org/profile-img/default-user-profile.svg" 
		width="30" class= "rounded-circle mr-3"></th>
									<th>John Doe</th>
									<th>7</th>
								</tr>
								<tr>
									<th><img src="https://static.change.org/profile-img/default-user-profile.svg" 
		width="30" class= "rounded-circle mr-3"></th>
									<th>Betty Lane</th>
									<th>13</th>
								</tr>
							</tbody>
						</table> -->
						
	<!-- TABLE TEST ------------------------------------------------------- -->					
		
            <h4 class="text-muted text-center mb-3">Volunteer Roster
            <%-- ${msg} ${sucess} --%>
            </h4>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th class="text-center">Image</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Phone</th>
                  <c:if test="${loggedInUser.role eq 'Admin'}">                 
                  <th>Role</th>
                  
                  </c:if>                
                </tr>
              </thead>
              <tbody>
                <c:forEach var="item" items="${admin}" >
                <tr>
                  <td>
                    ${users.indexOf(item)+1}.
                  </td>            
                  <td>
                  <div class="text-center">
                    <c:if test="${not empty item.image}">
                    <img src="static/img/users/${item.id}/profile/${item.image}" 
   						 alt="Profile Image" width="50" class= "rounded-circle mr-3"><br>
                    </c:if>
                    <c:if test="${empty item.image}">
                    No Image
                    </c:if>
                 </div>
                  </td>
                  <td>
                  ${item.fname} ${item.lname}
                  </td>
                  <td>
                    ${item.email}
                  </td>
                  <td>
                    ${item.phone}
                  </td>
                  <c:if test="${loggedInUser.role eq 'Admin'}">
                  <td>
                   <form method="POST" action="editrole" >    
					<input type="hidden" name="id" value="${item.id}" />      
					<select onchange="this.form.submit()" name="role" class="form-control">
					<option value="${item.role}">${item.role}</option>
					<option value="User">USER </option>
					<option value="Admin">ADMIN</option>  
					</select>
					   </form>
                   </td>
                   <td>
                  <a href="update?id=${item.id}" class="text-success"> <i class="icon-pencil"></i></a>
                  <a href="delete?id=${item.id}" onclick="confirmed(); return false;" > <i class="icon-trash"></i></a>
                  </td>
                  </c:if>
                </tr>
                </c:forEach>
                
              </tbody>
            </table>
          </div>
          
        </div>
						
						
						
					
						
						
						
						
					</div>
					<div class="col-12">
					
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<!-- END TABLES -->



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

</html>