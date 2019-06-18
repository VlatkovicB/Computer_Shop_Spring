<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="breadcrumbs">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="<c:url value="/" />">Home</a></li>
			<li class="active">Cart</li>
		</ol>
	</div>
</div>


<div id="content">
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-body">
				<!-- Display main content -->
				<form method="post">
					<table class="table table-stripped">
						<tbody>
							<tr>
								<th>#</th>
								<th>Product Name</th>
								<th>Unit Price</th>
								<th>Quantity</th>
								<th>Subtotal</th>
							</tr>

							<c:forEach var="item" items="${cart.cartContent}">
								<tr>
									<td>${item.key.id}</td>
									<td><img src="${product_image}" alt=""
										class="img-responsive"> <img
										src="<c:url value='/static/img/computer-small.png'/> " alt=""><strong><a
											href="product.html">${item.key.name}</a></strong></td>

									<td>$${item.key.price}</td>
									<td><input type="text" class="qty form-control"
										value="${item.value}"> <img
										src="<c:url value='/static/img/update.png'/> " alt=""></td>
									<td>$${item.key.price * item.value}</td>
								</tr>
							</c:forEach>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><strong>Total: $${cart.totalCost}</strong></td>
							</tr>
						</tbody>
					</table>
					<p class="mr">
						<a
							href="<c:url value="/"/>" class="btn btn-default" type="submit">Continue
							Shopping</a> <a href='<c:url value="/"/>' class="btn btn-info">Proceed
							to Checkout</a>
					</p>
				</form>
			</div>
		</div>
	</div>
	<!-- end container-->
</div>


