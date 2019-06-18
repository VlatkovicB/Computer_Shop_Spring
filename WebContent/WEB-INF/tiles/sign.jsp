
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="breadcrumbs">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="<spring:url value="/"/>">Home</a></li>
			<li class="active">Sign in</li>
		</ol>
	</div>
</div>
<div class="login">
	<div class="container">
		<div class="row">

			<form role="form" class="form-signin text-center"
				action="<spring:url value="/j_spring_security_check" />"
				method="POST">
				<h2 class="form-signin-heading">I have an account</h2>
				<div class="form-group">
					<input type="email" class="form-control" id="exampleInputEmail1"
						placeholder="Enter address" name="j_username">
				</div>
				<div class="form-group">
					<input type="password" class="form-control"
						id="exampleInputPassword1" placeholder="*************"
						name="j_password">
				</div>
				<div class="checkbox">
					<label> <input type="checkbox" value="remember-me">Remember me</label>
				</div>
				<button class="btn btn-info" type="submit">Sign in</button>
			</form>


		</div>
	</div>
</div>
<!--END login -->
<div class="new-customer text-center">
	<div class="container">
		<h2>I'm a new customer</h2>
		<p>You can create a free account in just a few simple steps. Click below to begin.</p>
		<a href='<spring:url value="/register" />' class="btn btn-info">Create new account</a>
	</div>
</div>