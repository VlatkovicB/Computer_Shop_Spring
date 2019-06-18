<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="breadcrumbs">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="<c:url value="/" />">Home</a></li>
			<li class="active"><c:out value="${product.name}" /></li>
		</ol>
	</div>
</div>
<div class="product">
	<div class="container">


		<div class="col-md-5">
			<img src="<c:url value='/static/img/${product.image}'/> " alt="" class="img-responsive">
		</div>
		<div class="col-md-7">
			<h3>${product.name}</h3>
		</div>
		<div class="col-md-5">
			<p>${product.description}</p>
		</div>
		<div class="col-md-2">
			<div class="price">
				<h4>$1099</h4>
				<ul class="list-unstyled">
					<c:choose>
						<c:when test="${product.quantity gt 0 }">
							<li>Availability: In stock</li>
						</c:when>
						<c:otherwise>
							<li>Availability: Not in stock</li>
						</c:otherwise>
					</c:choose>

					<li>Product code:${product.code}</li>
				</ul>
			</div>
		</div>
		<div class="col-md-7 col-md-offset-5">
			<form>
				<label class="control-label">QTY:</label> <input
					class="qty form-control" type="text" name="qty" value="1">
			</form>
			<c:url value="/cart/add/" var="addToCart" />
			<a href="${addToCart}/${product.id}" class="btn btn-info">Add to
				cart</a>
		</div>
	</div>
	<!-- END CONTAINER-->
	<div class="product-description">
		<div class="container">
			<div class="col-md-5">
				<h4>Product Description</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur.</p>
				<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa
					qui officia deserunt mollit anim id est laborum. Sed ut
					perspiciatis unde omnis iste natus error sit voluptatem accusantium
					doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo
					inventore veritatis et quasi architecto beatae vitae dicta sunt
					explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur
					aut odit aut fugit, sed quia consequuntur magni dolores eos qui
					ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui</p>
			</div>
			<div class="col-md-6 col-offset-md-1"></div>
		</div>
		<!-- END CONTAINER-->

	</div>
	<!-- end product-description -->

</div>
