<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div id="Mycarousel" class="carousel slide" data-ride="carousel">
	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">

		<div class="item active">
			<img src="<c:url value='/static/img/slide.png'/> " alt="slide"
				class="img-responsive">
			<div class="carousel-caption">
				<h1>Today's Deals</h1>
				<p>Check out this selection of products at a discounted price.</p>
				<a href="#" class="btn btn-info">Shop Now</a>
			</div>
		</div>
		<div class="item">
			<img src="<c:url value='/static/img/slide.png'/> " alt="slide"
				class="img-responsive">
			<div class="carousel-caption">
				<h1>Today's Deals</h1>
				<p>Check out this selection of products at a discounted price.</p>
				<a href="#" class="btn btn-info">Shop Now</a>
			</div>
		</div>
	</div>
	<!-- Controls -->
	<a class="left carousel-control" href="#Mycarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
		<span class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#Mycarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>
		<span class="sr-only">Next</span>
	</a>
</div>
<!-- END CAROUSEL-->

<div class="well well-sm">
	<div class="container">
		<div class="row">
			<h3>Featured</h3>
			<h5>View:</h5>
			<div class="btn-group">
				<a href="#" id="grid" class="btn btn-default btn-sm"> <span
					class="glyphicon glyphicon-th"></span>Grid
				</a> <a href="#" id="list" class="btn btn-default btn-sm"> <span
					class="glyphicon glyphicon-th-list"></span> List
				</a>
			</div>
		</div>
	</div>
</div>

<div id="content" class="container list-group">

	<div class="row">
		<c:forEach var="product" items="${products}">

			<div class="item  col-md-3 col-sm-6">
				<div class="thumbnail">
					<a href='<spring:url value="/product/${product.id}" />'> <img
						class="group list-group-image img-responsive"
						src="<c:url value='/static/img/${product.image}'/>" alt="mac">
					</a>
					<div class="caption">
						<h4 class="group inner list-group-item-heading">
							<c:out value="${product.name}" />
						</h4>
						<p class="group inner list-group-item-text">This is a short
							product description.</p>
						<h5>
							<c:choose>
								<c:when test="${product.quantity gt 0 }">
									Availability: <span class="green">In Stock</span>
								</c:when>
								<c:otherwise>
									Availability: <span class="red">Not in Stock </span>
								</c:otherwise>
							</c:choose>
						</h5>
						<div class="btn-group">
							<button type="button" class="btn btn-default">
								$
								<c:out value="${product.price}" />
							</button>
							<a href="cart/add/${product.id}" class="btn btn-info">Add to
								cart</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<!-- END ROW-->
</div>

