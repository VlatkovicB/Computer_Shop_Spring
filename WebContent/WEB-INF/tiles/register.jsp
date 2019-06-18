<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="breadcrumbs">
            <div class="container">
                <ol class="breadcrumb">
                  <li><a href="<spring:url value="/" />">Home</a></li>
                  <li class="active">Register</li>
                </ol>
            </div>
        </div>
        
        <div class="register container">
            <div class="row">
                <div class="col-md-12">
                <h4>Create new account</h4>
                
                    <form:form role="form" commandName="customer" cssClass="form-signin">
                    
                    	<c:if test="${success eq true}">
								<div class="alert alert-success">Registration successfull!</div>
						</c:if>
                    
	                      <div class="form-group">
	                        <label><span class="blue">*</span> Name:</label>
	                        <form:input path="name" cssClass="form-control" />
							<form:errors path="name" />
	                      </div>
	                      <div class="form-group">
	                        <label><span class="blue">*</span> Email:</label>
	                       	<form:input path="email" cssClass="form-control" />
							<form:errors path="email" />
	                      </div>
	                      <div class="form-group">
	                        <label><span class="blue">*</span> Password:</label>
	                        <form:password path="password" cssClass="form-control" />
							<form:errors path="password" />
	                      </div>
	                       <div class="form-group">
	                        <label><span class="blue">*</span> Confirm Password:</label>
	                        <input type="password" name="password_again" id="password_again" class="form-control" />
	                      </div>                 
	                      <button type="submit" class="btn btn-info">Create new account</button>
	                      
                    </form:form>
                    
                    
                    
                    <em>Fields marked with <span class="blue">*</span> are required.</em>
                </div>
            </div>
        </div>

        <div class="login text-center">
            <div class="container">
                <div class="row">
                        <h2 class="form-signin-heading">Already a customer?</h2>  
                        <p><a href="<spring:url value="/sign" />">Click here</a> to sign in.</p>                    
                </div>                              
            </div>
        </div><!--END login -->  