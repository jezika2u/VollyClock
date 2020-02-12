<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
    <title>Login/Register</title>
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> -->
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="resources/theme/css/style.css" rel="stylesheet" />



</head>

<body class="login">


<!-- HEADER -->
<jsp:include page="header.jsp"/>
<!-- HEADER -->




<div class="container login-container">
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <h3>Login</h3>
                    <form action="login" method="post">
                    <h3>
                    <span class="text-success"> ${success}</span>
                    <span class="alert-error" style="color:red">${error}</span>
                    </h3>
                        <div class="form-group">
                            <input type="email" name="email" id="username" class="form-control" placeholder="Your Email *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" id="pass" class="form-control" placeholder="Your Password *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="submit" id="submit" class="btnSubmit" value="Login" />
                        </div>
                        <div class="form-group">
<!--                             <a href="#" class="ForgetPwd">Forget Password?</a> -->
                        </div>
                    </form>
 
                </div>
                <div class="col-md-6 login-form-2">
                    <h3>Register</h3>
                    <form:form action="${action}" modelAttribute="registrationDto" method="post">
                    <h3>
                    <span class="text-success"> ${success}</span>
                  	<span class="text-error text-center">${error2}</span>
                    </h3>
                          <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="fname">First Name*</label>
                                      <form:input path="fname" class="form-control" placeholder="First Name"/>
                                      <div class="has-error">
										  <form:errors path="fname" class="text-error"/>
										</div>
									</div>
                                    <div class="form-group col-md-6">
                                      <label for="inputLastName" for="lname">Last Name</label>
                                      <form:input path="lname" class="form-control" placeholder="Last Name"/>
                                      <div class="has-error">
										  <form:errors path="lname" class="text-error"/>
										</div>
                                    </div>
                                  </div>
                                  
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="email">Email*</label>
                                      <form:input type="email" path="email" class="form-control"  placeholder="Email"/>
                                       <div class="has-error">
									  <form:errors path="email" class="text-error"/>
									</div>
                                    </div>
                                    <div class="form-group col-md-6">
                                      <label for="phone">Phone</label>
                                      <form:input type="text" path="phone" class="form-control" placeholder="Phone"/>
                                      <div class="has-error">
									<form:errors path="phone" class="text-error"/>
									</div>
                                    </div>
                                  </div>
                              
                 
                                	<div class="form-row">
                                    <div class="form-group col-lg-6 col-md-6">
                                      <label for="password">Password</label>
                                      <form:input type="password" path="password" class="form-control" placeholder="Your Password "/>
                                      <div class="has-error">
									<form:errors path="password" class="text-error"/>
									</div>
                                    </div>
                                      <div class="form-group col-lg-6 col-md-6">
                                      <label for="pass2">ReEnter Password</label>
                                      <form:input type="password" path="pass2" class="form-control"  placeholder="Password"/>
                                       <div class="has-error">
									  <form:errors path="pass2" class="text-error"/>
									</div>
                                  </div>
                                  </div>
                                  
                                  <div class= "container col-lg-12 addressbox">
                                  <div class="form-group">
                                    <label for="inputAddress">Address</label>
                                    <form:input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St " path="street"/>
                                  
                                  <div class="has-error">
										  <form:errors path="street" class="text-error"/>
										</div>
									</div>
									<div class="form-row">
                                  <div class="form-group">
                                    <label for="inputAddress2">Address 2</label>
                                    <form:input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor" path="street2"/>
                                  </div>
                                  </div>
                                  
                                  <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="inputCity">City</label>
                                      <form:input type="text" class="form-control" id="inputCity" path="city"/>
                                      <div class="has-error">
										  <form:errors path="city" class="text-error"/>
										</div>
                                    </div>
                                    <div class="form-group col-md-2">
                                      <label for="inputState">State</label>
                                      <form:select id="inputState" class="form-control" path="state">
                                       
                                        <form:option value= "AL">AL</form:option>
                                        <form:option value= "AK">AK</form:option>
                                        <form:option value= "AZ">AZ</form:option>
                                        <form:option value= "AR">AR</form:option>
                                        <form:option value= "CA">CA</form:option>
                                        <form:option value= "CO">CO</form:option>
                                        <form:option value= "CT">CT</form:option>
                                        <form:option value= "DE">DE</form:option>
                                        <form:option value= "FL">FL</form:option>
                                        <form:option value= "GA">GA</form:option>
                                        <form:option value= "HI">HI</form:option>
                                        <form:option value= "ID">ID</form:option>
                                        <form:option value= "IL">IL</form:option>
                                        <form:option value= "IN">IN</form:option>
                                        <form:option value= "IA">IA</form:option>
                                        <form:option value= "KS">KS</form:option>
                                        <form:option value= "KY">KY</form:option>
                                        <form:option value= "LA">LA</form:option>
                                        <form:option value= "ME">ME</form:option>
                                        <form:option value= "MD">MD</form:option>
                                        <form:option value= "MA">MA</form:option>
                                        <form:option value= "MI">MI</form:option>
                                        <form:option value= "MN">MN</form:option>
                                        <form:option value= "MS">MS</form:option>
                                        <form:option value= "MO">MO</form:option>
                                        <form:option value= "MT">MT</form:option>
                                        <form:option value= "NE">NE</form:option>
                                        <form:option value= "NV">NV</form:option>
                                        <form:option value= "NH">NH</form:option>
                                        <form:option value= "NJ">NJ</form:option>
                                        <form:option value= "NM">NM</form:option>
                                        <form:option value= "NY">NY</form:option>
                                        <form:option value= "NC">NC</form:option>
                                        <form:option value= "ND">ND</form:option>
                                        <form:option value= "OH">OH</form:option>
                                        <form:option value= "OK">OK</form:option>
                                        <form:option value= "OR">OR</form:option>
                                        <form:option value= "PA">PA</form:option>
                                        <form:option value= "RI">RI</form:option>
                                        <form:option value= "SC">SC</form:option>
                                        <form:option value= "SD">SD</form:option>
                                        <form:option value= "TN">TN</form:option>
                                        <form:option value= "TX">TX</form:option>
                                        <form:option value= "UT">UT</form:option>
                                        <form:option value= "VA">VA</form:option>
                                        <form:option value= "VT">VT</form:option>
                                        <form:option value= "WA">WA</form:option>
                                        <form:option value= "WV">WV</form:option>
                                        <form:option value= "WI">WI</form:option>
                                        <form:option value= "WY">WY</form:option>
                                      </form:select>
                                    </div>
                                    <div class="form-group col-md-4">
                                      <label for="inputZip">Zip</label>
                                      <form:input type="text" class="form-control" id="inputZip" path="zipcode"/>
                                    </div>
                                  </div>
                                 
                                  <div class="form-row">
                                  <div class="form-group">
                                    <div class="form-check">
                                        <div class="form-group col-md-4">

                                      <form:checkbox path="role" value="Volunteer"/>Volunteer
                                  </div>
                                    </div>
                                    <div class="form-group col-md-4">
                                    <div class="form-check">

                                      <form:checkbox path="role" value="Admin"/>Admin
                                  </div>
                                    </div>
                                  </div>
                              </div>
                              <div>
                                  <input type="submit" class="btnSubmit" value="Register" />
                                  </div>
                                  </div>
                                </form:form>
                                
                        </div>
                    
                </div>
            </div>
       
   








<!-- FOOTER -->
<jsp:include page="footer.jsp"/>
<!-- FOOTER -->

</body>
</html>