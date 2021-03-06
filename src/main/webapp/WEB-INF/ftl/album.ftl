<!DOCTYPE html>
<html>
<head>
<title>Album</title>
<#include "public/header.ftl" />
<script src="js/modernizr.custom.97074.js"></script>
<!--script-->
<script src="js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
		<!--light-box-files -->
		<script type="text/javascript" charset="utf-8">
		$(function() {
			$('.gallery a').Chocolat();
		});
		</script>

</head>
<body>
<!--header-->
<div class="header header-main">
	<div class="container">
				<div class="header-top">
				<div class="logo">
					<h1><a href="index.html">Music Club</a></h1>
				</div>
				<div class="top-nav">
					<span class="menu"><img src="images/menu.png" alt=""> </span>
					<ul>
						<li ><a href="index.html" class="hvr-sweep-to-bottom color"><i class="glyphicon glyphicon-home"></i>Home  </a> </li>
						<li ><a href="album.html" class="hvr-sweep-to-bottom color1"><i class="glyphicon glyphicon-picture"></i>Albums  </a> </li>
						<li><a href="blog.html"  class="hvr-sweep-to-bottom color2"><i class="glyphicon glyphicon-tags"></i>Blog</a></li>
						<li><a href="typo.html" class="hvr-sweep-to-bottom color3"><i class="glyphicon glyphicon-calendar"></i>Events </a></li>
						<li><a href="mail.html" class="hvr-sweep-to-bottom color4"><i class="glyphicon glyphicon-envelope"></i>Mail </a></li>
					<div class="clearfix"> </div>
					</ul>
					<!--script-->
				<script>
					$("span.menu").click(function(){
						$(".top-nav ul").slideToggle(500, function(){
						});
					});
			</script>				
				</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--//header-->
<!--gallery-->
	<div class="gallery">
		<div class="container">
			<h3>My Albums</h3>
			<section>
				<ul id="da-thumbs" class="da-thumbs">
					<li>
						<a href="images/a1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/a1.jpg" alt="" />
							<div>
								<h5>Music</h5>
								<span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/a2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/a2.jpg" alt="" />
							<div>
								<h5>Music</h5>
								<span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/a3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/a3.jpg" alt="" />
							<div>
								<h5>Music</h5>
								<span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/a4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/a4.jpg" alt="" />
							<div>
								<h5>Music</h5>
								<span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
							</div>
						</a>
					</li>
					<li>	
						<a href="images/a5.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/a5.jpg" alt="" />
							<div>
								<h5>Music</h5>
								<span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/a6.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/a6.jpg" alt="" />
							<div>
								<h5>Music</h5>
								<span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/a7.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/a7.jpg" alt="" />
							<div>
								<h5>Music</h5>
								<span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/a8.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/a8.jpg" alt="" />
							<div>
								<h5>Music</h5>
								<span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/a9.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/a9.jpg" alt="" />
							<div>
								<h5>Music</h5>
								<span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
							</div>
						</a>
					</li>
					<div class="clearfix"> </div>
				</ul>
			</section>
			<script type="text/javascript" src="js/jquery.hoverdir.js"></script>	
		<script type="text/javascript">
			$(function() {
				$(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );
			});
		</script>
        </div>
		
	</div>
<!--//gallery-->
<#include "public/footer.ftl" />
</body>
</html>