<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<header>
	<div class="container">
		<div class="row">
			<div class="col-sm-4 ">
				<h5>
					Phone orders: 1-800-0000 | Email us: <a href="#">office@shop.com</a>
				</h5>
			</div>
		</div>
	</div>
</header>
<!-- END HEADER -->

<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#myNav">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href='<spring:url value="/" />'><span>e</span>Commerce</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="myNav">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Shop by Category <span class="caret"></span></a>

					<ul class="dropdown-menu" role="menu">
						<c:forEach var="category" items="${categories}">
							<li><a href='<c:url value="/category/${category.id}" />'>${category.name}</a></li>
						</c:forEach>
					</ul></li>
			</ul>

			<form class="navbar-form navbar-left" role="search"
				action="search.html">
				<div class="form-group">
					<div class="input-group search">
						<input type="text" class="form-control search"
							placeholder="Type and hit enter">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								All Categories <span class="caret"></span>
							</button>
						</div>
						<!-- /btn-group -->
					</div>
					<!-- /input-group -->
				</div>
			</form>

			<ul class="nav navbar-nav">
				<security:authorize access="!isAuthenticated()">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Sign in <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">

							<li class="navbar-text">
								<form action="<c:url value="/sign"/>">
									<input type="submit" class="btn btn-info" value="Sign in">
								</form>
							</li>

							<!-- <li class="navbar-text">Not a member?Create free account</li> -->

						</ul></li>
				</security:authorize>

				<security:authorize access="isAuthenticated()">
					<li><a href="<spring:url value="/logout" />">Logout</a></li>
				</security:authorize>

			</ul>

			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">No items<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li class="navbar-text">No items in your cart.</li>
						<li class="navbar-text">
							<form action="<c:url value="/cart"/>">
								<input type="submit" class="btn btn-info" value="View Cart">
							</form>
						</li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>
<!-- END NAV-->
