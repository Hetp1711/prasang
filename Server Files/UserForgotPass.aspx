<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserForgotPass.aspx.cs" Inherits="Contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Prashang Events Planning</title>
<!-- custom-theme -->
<style type="text/css">

		.btn {
    font-size: 1em;
    color: #FFFFFF;
    padding: 0.8em 1em 0.8em 1em;
    border: none;
    margin: 1em auto 0em;
    outline: none;
    background: #cf2d50;
    width: 27%;
	text-transform:uppercase;
	letter-spacing:1px;
	font-family: 'Play', sans-serif;
}

		.btn1 {
    font-size: 1em;
    color: #FFFFFF;
    padding: 0.8em 1em 0.8em 1em;
    border: none;
    margin: 1em auto 0em;
    outline: none;
    background-color: darkgreen;
    width: 47%;
	text-transform:uppercase;
	letter-spacing:1px;
	font-family: 'Play', sans-serif;
}
.btn:hover {
    background: #212121;
    transition: 0.5s all;
  -webkit-transition: 0.5s all;
  -moz-transition: 0.5s all;
  -o-transition: 0.5s all;
}

.pass{
    display: inline-block;
    background: none;
    border: 1px solid #A3A1A1;
    width: 100%;
    outline: none;
    font-size: 0.95em;
    color: #747577;
    font-weight: 400;
    border-radius: 2px;
    padding: 10px 15px;
	margin:1em 0em;
	font-family: 'Play', sans-serif;
}
	.auto-style1 {
        border-style: none;
        border-color: inherit;
        border-width: medium;
        font-size: 1em;
        color: #FFFFFF;
        padding: 0.8em 1em 0.8em 1em;
        margin: 1em auto 0em;
        outline: none;
        background-color: darkgreen;
        text-transform: uppercase;
        letter-spacing: 1px;
        font-family: 'Play', sans-serif;
    }
	</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Events Planning Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

	
</head>
<body>
    <form id="form1" runat="server">
       <!-- banner -->
	<div class="banner1">
		<div class="container">
			<!-- header -->
			<div class="w3_agile_menu">
				<div class="agileits_w3layouts_nav">
					<div id="toggle_m_nav">
						<div id="m_nav_menu" class="m_nav">
							<div class="m_nav_ham w3_agileits_ham" id="m_ham_1"></div>
							<div class="m_nav_ham" id="m_ham_2"></div>
							<div class="m_nav_ham" id="m_ham_3"></div>
						</div>
					</div>
					<div id="m_nav_container" class="m_nav wthree_bg">
						<nav class="menu menu--sebastian">
							<ul id="m_nav_list" class="m_nav menu__list">
								<li class="m_nav_item" id="m_nav_item_1"> <a href="Home.aspx" class="link link--kumya"><i class="fa fa-home" aria-hidden="true"></i><span data-letters="Home">Home</span></a></li>
								<li class="m_nav_item" id="moble_nav_item_2"> <a href="Services.aspx" class="link link--kumya"><i class="fa fa-cog" aria-hidden="true"></i><span data-letters="Services">Services</span></a></li>
								<li class="m_nav_item active" id="moble_nav_item_3"> <a href="Aboutus.aspx" class="link link--kumya"><i class="fa fa-info-circle" aria-hidden="true"></i><span data-letters="About Us">About Us</span></a></li>
								<li class="m_nav_item" id="moble_nav_item_4"> <a href="Login1.aspx" class="link link--kumya"><i class="fa fa-building-o" aria-hidden="true"></i><span data-letters="Login">Login</span></a></li>
								<li class="m_nav_item" id="moble_nav_item_6"> <a href="Contactus.aspx" class="link link--kumya"><i class="fa fa-envelope-o" aria-hidden="true"></i><span data-letters="Contact Us">Contact Us</span></a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<div class="header">
				<div class="agileits_w3layouts_logo">
					
					<img class="navbar-header" src="img\wedding\logo.png" alt="" />
				</div>
				<div class="agileinfo_social_icons">
					<ul class="agileits_social_list">
						<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						<li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>	
			<!-- //header -->
		</div>
	</div>
<!-- //banner -->
<!-- contact -->
<div class="contact">
	<div class="container">
	<b class="w3layouts_head">ChangePassword <span>To Access Services</span></b>
	
		<div class="contact-main w3agile">
			<div class="col-md-7 contact-left">
			  <div class="contact-bottom">
				  <asp:TextBox ID="txtmobile" runat="server" placeholder="EnterMobileNo" ></asp:TextBox>
			  		
			  	
			  		
				  <asp:Button ID="Button1" runat="server" Text="Verify"  CssClass="btn" OnClick="Button1_Click"/>
				  	<br />
				  <hr />
				 
				   
			  		<br />
				   <hr />
			
			  </div>
			 </div>
			 <div class="col-md-5 map">
				 <asp:Image ImageUrl="~/image/login1.png" runat="server" Width="350px" />
			 	<iframe src="  "> </iframe>
			 </div>
		   <div class="clearfix"> </div>
			
		</div>

			
			 
			 
		 
	</div>


<!--find-->
<div class="ag-ft agileinfo">
	<div class="container">
		<div class="footre-main">
			  <h3 class="w3layouts_head">Find</h3>
			  <p class="w3_para">Helps you plan your Events like a loved one.</p>
			   <div class="ag-ft-bottom">
			   	 <div class="col-md-4 ftr-grid">
			   	 	<span class="ftr-address-icons"><i class="fa fa-phone" aria-hidden="true"></i></span>
			   	 	 <div class="ftr-text">
				   		<h4>Phone</h4>
				   		<p>+12 5842 544 971</p>
				   		<p>+12 4267 583 719</p>
			   	     </div>
			   	     <div class="clearfix"> </div>
			   	 </div>
			   	 <div class="col-md-4 ftr-grid">
			   	 	<span class="ftr-address-icons"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
			   	 	<div class="ftr-text">
			   		  <h4>Office Address</h4>
			   		  <p>New York,Bronx,Morris Park</p>
                       <p>5280 Wetzel Lane Grand Rapids</p>
			   		</div>
			   		 <div class="clearfix"> </div>
			   	 </div>
			   	 <div class="col-md-4 ftr-grid">
			   	 	<span class="ftr-address-icons"><i class="fa fa-envelope" aria-hidden="true"></i></span>
			   	 	<div class="ftr-text">
			   		  <h4>Email</h4>
			   		  <p><a href="mailto:info@example.com">mail@example1.com</a></p>
			   		  <p><a href="mailto:info@example.com">mail@example2.com</a></p>
			   		</div>
			   		 <div class="clearfix"> </div>
			   	 </div>
			   	 <div class="clearfix"> </div>
		     </div>			
		</div>
	</div>
</div>
<!-- //find -->

<!-- footer -->
	<div class="footer">
		<div class="container">
			<h2><a href="index.html">Events Planning</a></h2>
			<h3>(+91) 9898598985</h3>
			
			<div class="agileits_w3three_nav">
				<div class="agileits_w3three_nav_left">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="services.html">Services</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="work.html">Our Work</a></li>
						<li class="active"><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="agileits_w3three_nav_right">
					<ul class="agileits_social_list">
						<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						<li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<p>© 2022 Prashang Events Planning. All rights reserved | Design by <a href="">PU </a></p>
		</div>
	</div>
<!-- //footer -->

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- menu -->
	<script type="text/javascript" src="js/main.js"></script>
<!-- //menu -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
    </script>
<!-- //here ends scrolling icon -->
    </form>
</body>
</html>
