<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html>
<html lang="en">
<template:header/>
<body>
	<mango:Event name="beforeHtmlBodyStart" />
		<!--- global page header / nav --->
		<template:headernav/>
			<!-- main content -->
			<div class="container">
			<!-- main content -->
			<div class="row-fluid">
				<div class="span8">
					<!-- carousel -->
					<div id="myCarousel" class="carousel slide">
						<div class="carousel-inner">
							<div class="item active">
								<img src="<mango:Blog skinurl />assets/img/slide-01.jpg" alt="">
								<div class="container">
									<div class="carousel-caption">
										<h4>Location</h4>
										<p>NCDevCon is held at the College of Textiles located on the Centennial Campus of NC State University in Raleigh, North Carolina</p>
									</div>
								</div>
							</div>
							 <div class="item">
								 <img src="<mango:Blog skinurl />assets/img/slide-02.jpg" alt="">
								<div class="container">
									<div class="carousel-caption">
										<h4>Sponsor</h4>
										<p>Sponsoring NCDevCon is a great way to reach developers in the heart of the Research Triangle Park, home to IBM, Cisco, Lenovo, SAS, RTI, EPA, RedHat, Quintiles, Qualcomm, Cree and other leading companies. <span class="label">Learn More</span></p>
									</div>
								</div>
							</div>
						</div>
						<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
						<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
					</div><!-- // carousel -->

		<div class="container marketing">
			<div class="row-fluid">
				<div class="span4">
					<img class="img-circle" data-src="holder.js/140x140">
					<h3>About</h3>
					<p>The NCDevCon Conference is held annually on the Centennial Campus of NC State University in Raleigh, North Carolina and covers a wide variety of web development and design topics including Web / HTML5 / CSS, Mobile, Javascript / jQuery and ColdFusion.</p>
					<ul class="unstyled">
						<li><i class="icon-calendar"></i> When: September 28-29, 2013</li>
						<li><i class="icon-plane"></i> Where: Raleigh, North Carolina</li>
						<li><i class="icon-money"></i> How much: $200</li>
						<li><i class="icon-lightbulb"></i> Why: Network, learn, feed your brain.</li>
					</ul>
				</div>

				<div class="span4">
					<h3>Stay In Touch</h3>
					<p>Join our mailing list and/or follow us on Twitter to keep up to date on NCDevCon news and announcements.</p>
					<p><i class="icon-twitter"></i> Follow @ncdevcon</p>

					<!-- Begin MailChimp Signup Form -->
					<div>
						<form action="http://ncdevcon.us5.list-manage.com/subscribe/post?u=decde6098798f0901110dc72f&amp;id=f935cd82a9" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="form-inline" target="_blank" novalidate>
							<input type="email" value="" name="EMAIL" id="mce-EMAIL" placeholder="Email address" required>
							<button type="submit" class="btn">Join</button>
						</form>
					</div><!-- // End mc_embed_signup-->

				</div>
			</div><!-- // row -->








				</div>
		</div>

				<!-- sidebar -->
				<div class="span4">
					<ul class="sidebar_list">
						<mangox:PodGroup locationId="sidebar" template="index">
							<mangox:TemplatePod id="blog-description" title="WTF">
							<p><mango:Blog description descriptionParagraphFormat /></p>
							</mangox:TemplatePod>
							<template:sidebar />
						</mangox:PodGroup>
					</ul>
				</div>


		<template:footer/>

		<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>