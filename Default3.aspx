<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   		<meta charset="utf-8">
		<title>RebelBase</title>
		


		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Libs CSS -->
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/fonts/font-awesome/css/font-awesome.css">
		<link rel="stylesheet" href="vendor/flexslider/flexslider.css" media="screen" />
		<link rel="stylesheet" href="vendor/fancybox/jquery.fancybox.css" media="screen" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="css/theme.css">
		<link rel="stylesheet" href="css/theme-elements.css">

		<!-- Current Page Styles -->
		<link rel="stylesheet" href="vendor/revolution-slider/css/settings.css" media="screen" />
		<link rel="stylesheet" href="vendor/revolution-slider/css/captions.css" media="screen" />
		<link rel="stylesheet" href="vendor/circle-flip-slideshow/css/component.css" media="screen" />

		<!-- Custom CSS -->
		<link rel="stylesheet" href="css/custom.css">

		<!-- Skin -->
		<link rel="stylesheet" href="css/skins/blue.css">
		
		<!-- Responsive CSS -->
		<link rel="stylesheet" href="css/bootstrap-responsive.css" />
		<link rel="stylesheet" href="css/theme-responsive.css" />
        <style>

            .asd {
                width:100%;
            }
            .row {

                margin-bottom:35px;
            }

        </style>
		<!-- Favicons -->
		
		<!-- Head Libs -->
		<script src="vendor/modernizr.js"></script></head>
<body>
    <form id="form1" runat="server">
    <div>
        <header>
				<div class="container">
					<h1 class="logo">
						<a href="Default.aspx">
							<img alt="Porto" src="img/logo.png">
						</a>
					</h1>
				
					<nav>
						<ul class="nav nav-pills nav-top">
							<li>
								<a href="about_us.aspx"><i class="icon-angle-right"></i>About Us</a>
							</li>
							<li>
								<a href="about_us.aspx"><i class="icon-angle-right"></i>Contact Us</a>
							</li>
							<li class="phone">
								<span><i class="icon-phone"></i>(123) 456-7890</span>
							</li>
						</ul>
					</nav>
					<div class="social-icons">
						<ul class="social-icons">
							<li class="facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook">Facebook</a></li>
							<li class="twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter">Twitter</a></li>
							<li class="linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin">Linkedin</a></li>
							<li class="googleplus"><a href="http://www.linkedin.com/" target="_blank" title="Gmail">Linkedin</a></li>
						</ul>
					</div>
					<nav>
						<ul class="nav nav-pills nav-main" id="mainMenu">
							<li class="dropdown active">
								<a href="search2.aspx">Browse Project</a>
							</li>
							<li class="dropdown ">
								<a href="sign_up.aspx">Sign In</a>
							</li>
							
						</ul>
					</nav>
				</div>
			</header>
        <div class="container" style="margin-top:35px;">
                        <div class="row" >
							<div class="span7"> Açıklama vb kısmı</div><div class="span2" >
								<h4 class="short" style="text-align:right;">E-mail</h4>

							</div>
								<div class="span3">
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="E-Mail" class="asd"></asp:TextBox>
								
							</div></div><div class="row" >
							<div class="span7"></div><div class="span2" >
								<h4 class="short" style="text-align:right;">Password</h4>

							</div>
								<div class="span3">
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" class="asd" TextMode="Password"></asp:TextBox>
								
							</div></div><div class="row" >
                                 <div class="span10" ></div>
                                <div class="span2" style="text-align:center;">
                                <asp:Button ID="Button1" runat="server" class="btn " Text="Login" OnClick="Button1_Click"/>

                        </div>
                        </div>  </div>

        	<footer>
				<div class="container">
					<div class="row">
						<div class="footer-ribon">
							<span>Get in Touch</span>
						</div>
						<div class="span4">
							<div class="contact-details">
								<h4>Contact Us</h4>
								<ul class="contact">
									<li><p><i class="icon-map-marker"></i> <strong>Address:</strong> 1234 Street Name, City Name, United States</p></li>
									<li><p><i class="icon-phone"></i> <strong>Phone:</strong> (123) 456-7890</p></li>
									<li><p><i class="icon-envelope"></i> <strong>Email:</strong> <a href="mailto:mail@example.com">mail@example.com</a></p></li>
								</ul>
							</div>
						</div>
						<div class="span2">
							<h4>Follow Us</h4>
							<div class="social-icons">
								<ul class="social-icons">
									<li class="facebook"><a href="http://www.facebook.com/" target="_blank" data-placement="bottom" rel="tooltip" title="Facebook">Facebook</a></li>
									<li class="twitter"><a href="http://www.twitter.com/" target="_blank" data-placement="bottom" rel="tooltip" title="Twitter">Twitter</a></li>
									<li class="linkedin"><a href="http://www.linkedin.com/" target="_blank" data-placement="bottom" rel="tooltip" title="Linkedin">Linkedin</a></li>
							        <li class="googleplus"><a href="http://www.linkedin.com/" target="_blank" title="Gmail">Linkedin</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="footer-copyright">
					<div class="container">
						<div class="row">
							<div class="span1">
								
							</div>
							<div class="span7">
								<p>© Copyright 2014 by RabelBase. All Rights Reserved.</p>
							</div>
							<div class="span4">
								<nav id="sub-menu">
									<ul>
										<li><a href="about_us.aspx">Contact Us</a></li>
										<li><a href="about_us.aspx">Privasy Policy</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</footer>
    </div>
        
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
        	<script src="vendor/jquery.easing.js"></script>
		<script src="vendor/jquery.cookie.js"></script>
		<!-- <script src="master/style-switcher/style.switcher.js"></script> -->
		<script src="vendor/bootstrap.js"></script>
		<script src="vendor/selectnav.js"></script>
		<script src="vendor/twitterjs/twitter.js"></script>
		<script src="vendor/revolution-slider/js/jquery.themepunch.plugins.js"></script>
		<script src="vendor/revolution-slider/js/jquery.themepunch.revolution.js"></script>
		<script src="vendor/flexslider/jquery.flexslider.js"></script>
		<script src="vendor/circle-flip-slideshow/js/jquery.flipshow.js"></script>
		<script src="vendor/fancybox/jquery.fancybox.js"></script>
		<script src="vendor/jquery.validate.js"></script>

		<script src="js/plugins.js"></script>

		<!-- Current Page Scripts -->
		<script src="js/views/view.home.js"></script>

		<!-- Theme Initializer -->
		<script src="js/theme.js"></script>

		<!-- Custom JS -->
		<script src="js/custom.js"></script>

    </form>
</body>
</html>
