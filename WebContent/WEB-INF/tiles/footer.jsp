<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="info">
	<div class="container">
		<p class="text-center">
			For phone orders please call <span class="black">1-800-0000</span>.<br>You
			can also email us at <a href="#">office@shop.com</a>
		</p>
	</div>
	<!-- END CONTAINER -->
</div>
<!-- END INFO -->
<footer>
	<div class="top-part">
		<div class="container">
			<div class="row">
				<div class="col-sm-2">
					<h5>My Account</h5>
					<ul class="list-unstyled">
						<li>Sign In</li>
						<li>Create New Account</li>
						<li>Wishlist</li>
						<li>Order History</li>
						<li>Preferences</li>
						<li>Shopping Cart</li>
					</ul>
				</div>
				<div class="col-sm-2">
					<h5>Information</h5>
					<ul class="list-unstyled">
						<li>Returns</li>
						<li>Brand Index</li>
						<li>Gift Vouchers</li>
						<li>Terms of use</li>
						<li>Privacy Policy</li>
					</ul>
				</div>
				<div class="col-sm-2">
					<h5>Extras</h5>
					<ul class="list-unstyled">
						<li>About Us</li>
						<li>Contact Us</li>
						<li>Sitemap</li>
					</ul>
				</div>
				<div class="col-sm-6">
					<h5>Newsletter Signup</h5>
					<p>Please enter your email address below. Don't worry, we won't
						spam you.</p>
				</div>
			</div>
		</div>
		<!-- END CONTAINER -->
	</div>
	<!-- END TOP PART -->

	<div class="bottom-part">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<p>This is a short description of the store.</p>
					<p class="copyright">(c) Copyright 2014 eCommerce.</p>
				</div>
				<div class="col-md-2 col-md-offset-2">
					<h5>Connect with us</h5>
					<ul class="list-unstyled">
						<li><a href="#"><img src="<c:url value='/static/img/twitter-icon.png'/> "
								alt="twitter"> Twitter</a></li>
						<li><a href="#"><img src="<c:url value='/static/img/facebook-icon.png'/> "
								alt="twitter"> Facebook</a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<h5>Supported payment methods</h5>
					<ul class="list-unstyled list-inline">

						<li><img src="<c:url value='/static/img/discover.jpg' /> " alt="discover"></li>

						<li><img src="<c:url value='/static/img/mastercard.jpg'/> " alt="mastercard"></li>

						<li><img src="<c:url value='/static/img/americanexpress.jpg'/> "
							alt="americanexpress"></li>

						<li><img src="<c:url value='/static/img/visa.jpg'/> " alt="visa"></li>

						<li><img src="<c:url value='/static/img/paypal.jpg'/> " alt="paypal"></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- END CONTAINER -->
	</div>
	<!-- END BUTTOM PART -->
</footer>


