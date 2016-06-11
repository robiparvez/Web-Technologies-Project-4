<!DOCTYPE html>
<?php
	include("functions/functions.php");
?>
<html>
	<head>
		<title>SHFN Online Shop</title>
		<link rel="icon" href="images/favicon.PNG" type="image/x-icon"/>
		<link rel="stylesheet" type="text/css" href="styles/style.css">

		<!--Bootstrap-->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  		
	</head>
<body>
	<!--Main content start-->
	<div class="main_wrapper">

		<!--Header start-->
		<div class="header_wrapper">
			<a href="index.php"><img id="logo"  src="images/logo.PNG" alt="logo"></a>
			<img id="banner" src="images/banners.PNG" alt="banner">

		</div>
		<!--Header end-->

		<!--Navigation start-->
		<div class="menubar">
			<ul id="menu">
				<li><a style="background-color: #FF0066;border-radius: 10px;color:white;" href="index.php">Home</a></li>
				<li><a href="all_products.php">All Products</a></li>
				<li><a href="MyAcc.php">My Account</a></li>
				<li><a href="signup.php">Sign Up</a></li>
				<li><a href="" id="myacc" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Shopping Cart</a></li>
				<li><a href="">Contact Us</a></li>
			</ul>

			  <!-- Modal -->
			  <div class="modal fade" id="myModal" role="dialog">
			    <div class="modal-dialog">
			      <!-- Modal content-->
			      <div id="modelcon" class="modal-content">
			        
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 class="modal-title">Your Shopping Cart</h4>
			        </div>

			        <div class="modal-body">
			        	<?php Shopping_Fun();?>
			        	<?php update(); ?>
			        	
				          <span style="font-size:30px;padding:5px 5px;margin-right:50px;">
					          <b style="margin-right:90px;margin-left:30px;">No.</b>
					          <b style="margin-right:90px;">Item Name</b>
					          <b style="margin-right:60px;">Price</b>
				          </span>
				          
				          <?php viewItem(); ?>

			        </div>
			      
			      </div>
			    </div>
			  </div>
			  <!-- Modal -->

			<div id="search_form">
				<form method="GET" action="results.php">
					<input name="us" type="search" class="form-control" id="usrs" placeholder="Search Text Here" required>
					<input id="srcBtn" class="btn btn-info" type="submit" name="sub" value="Search"/>
				</form>
			</div>

		</div>
		<!--Navigation end-->
		
		<!--Main wrapper content start-->
		<div class="content_wrapper">
			<div id="sidebar">
				<div id="sidebar_title">Categories</div>
				
				<ul id="cats">
					<?php getCats(); ?>
				</ul>

				<div id="sidebar_title">Brands</div>
				
				<ul id="cats">
					<?php getBrands(); ?>
				</ul>

			</div>
			<div id="content_area">

				<?php cart(); ?>

				<div id="product_box">
					<?php getCatPro();?>
					<?php getBrandPro();?>
					<?php getPro();?>
					
				</div>
				

			</div>

		</div>
		<!--Main wrapper content end-->
		
		<div class="footer">
			<h4 style="text-align:center;padding-top:25px;">&copy; copyright SHFN Online Shop 2015</h4>
		</div>
	</div>
	<!--Main content end-->

</body>
</html>