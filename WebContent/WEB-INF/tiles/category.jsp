<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="breadcrumbs">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href='<c:url value="/" />'>Home</a></li>
			<li class="active">${category.name}</li>
		</ol>
	</div>
</div>

<div id="content">
	<div class="container">
		<div class="row">
			<div class="sidebar col-md-3">
				<h5>Computers</h5>
				<ul class="list-unstyled">
					<c:forEach var="cat" items="${categories}">
						<li>${cat.name}</li>
					</c:forEach>
				</ul>
				<h5>Manufatures</h5>
				<ul class="list-unstyled">
					<li>Apple</li>
					<li>Dell</li>
					<li>Acer</li>
				</ul>
				<div class="add-block">
					<h4>This is a custom block</h4>
					<p>This is a basic description of this block. You can also add
						images or use this area to display a banner.</p>
					<img src="<c:url value='/static/img/banner.jpg'/>" alt=""
						class="img-responsive">

				</div>
			</div>
			<div class="col-md-9">
				<div class="row">

					<c:forEach var="product" items="${products}">

						<div class="items  col-md-4 col-sm-6">
							<div class="thumbnail">
								<a href="<c:url value="/product/${product.id}" />"> <img
									class="group list-group-image img-responsive"
									src="<c:url value='/static/img/${product.image}'/> " alt="mac"></a>
								<div class="caption">
									<h4 class="group inner list-group-item-heading">${product.name}</h4>
									<p class="group inner list-group-item-text">${product.description}</p>
									<h5>
										Availability: <span class="green">In Stock </span>
									</h5>
									<div class="btn-group">
										<button type="button" class="btn btn-default">$
											${product.price}</button>
										<button type="button" class="btn btn-info">Add to
											cart</button>
									</div>
								</div>
							</div>
						</div>

					</c:forEach>






				</div>
			</div>
		</div>
		<!-- end row -->
	</div>
	<!--end container -->
	<div class="pages">
		<div class="container">
			<div class="col-md-12">
				<h5>Pages:</h5>
				<ol class="breadcrumb">
					<li class="active">1</li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
				</ol>
			</div>
		</div>
	</div>
</div>
<!-- end content-->