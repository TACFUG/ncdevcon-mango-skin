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

<!--- CALL FOR SPEAKERS ==========================================
							<div class="item active">
								<a href="http://bit.ly/135J9Od" target="_blank" title="Submit your presentation today!"><img src="<mango:Blog skinurl />assets/img/slide-5.jpg" alt="Call for speakers - image by Sunfox on Flickr"></a>
								<div class="container">
									<div class="carousel-caption">
										<h4>2013 - Call For Speakers</h4>
										<p>We've opened the call for speakers. Want to talk about HTML5, Mobile, CSS, Javascript or ColdFusion?  Submit your presentation(s) today!
										<a href="http://bit.ly/135J9Od" class="btn btn-mini btn-success">Learn More</a></p>
									</div>
								</div>
							</div><!-- // item -->
 ========================================================== --->

							<div class="item active">
								<img src="<mango:Blog skinurl />assets/img/slide-1.jpg" alt="Content">
								<div class="container">
									<div class="carousel-caption">
										<h4>Content</h4>
										<p>NCDevCon is a 250-300 attendee technical conference covering a wide variety of web development and design topics including Mobile and Web development, Javascript and HTML5</p>
									</div>
								</div>
							</div><!-- // item -->

							<div class="item">
								<img src="<mango:Blog skinurl />assets/img/slide-2.jpg" alt="Photo by NCDOTcommunication on Flickr">
								<div class="container">
									<div class="carousel-caption">
										<h4>Location: Raleigh, North Carolina</h4>
										<p>Businessweek selected Raleigh as its best place to live in the country. #1 Among Fastest-Growing Cities In The U.S. - Forbes, March 2013.  #5 Among America's New Tech Hot Spots - Forbes, January 2013.</p>
									</div>
								</div>
							</div><!-- // item -->

							<div class="item">
								<img src="<mango:Blog skinurl />assets/img/slide-3.jpg" alt="Photo by NCDOTcommunication on Flickr">
								<div class="container">
									<div class="carousel-caption">
										<h4>Venue: Centennial Campus</h4>
										<p>NCDevCon is held at the College of Textiles located on the Centennial Campus of NC State University in Raleigh, North Carolina. Excellent wi-fi, classroom seating, nice outdoor areas and lots of room to network in the halls.</p>
									</div>
								</div>
							</div><!-- // item -->

							<div class="item">
								<img src="<mango:Blog skinurl />assets/img/slide-4.jpg" alt="">
								<div class="container">
									<div class="carousel-caption">
										<h4>Sponsor</h4>
										<p>Sponsoring NCDevCon is a great way to reach developers in the heart of the Research Triangle Park, home to IBM, Cisco, Lenovo, SAS, RTI, EPA, RedHat, Quintiles, Qualcomm, Cree and other leading companies. <a href="http://ncdevcon.com/page.cfm/sponsors" title="Learn more about sponsoring NCDevCon" class="btn btn-mini btn-success">Learn More</a></p>
									</div>
								</div>
							</div><!-- // item -->
						</div>
						<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
						<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
					</div><!-- // carousel -->

					<div class="container marketing">
						<div class="row-fluid">
							<div class="span4">
								<h3>About</h3>
								<p>The NCDevCon Conference is held annually on the Centennial Campus of NC State University in Raleigh, North Carolina and covers a wide variety of web development and design topics including Web / HTML5 / CSS, Mobile, Javascript / jQuery and ColdFusion.</p>
								<ul class="unstyled">
									<li><i class="text-error icon-calendar"></i> When: September 21-22, 2013</li>
									<li><i class="text-info icon-plane"></i> Where: Raleigh, North Carolina</li>
									<li><i class="text-success icon-money"></i> How much: $200</li>
									<li><i class="text-warning icon-lightbulb"></i> Why: Network, learn, feed your brain.</li>
								</ul>
							</div>

							<div class="span4">
								<h3>Stay In Touch</h3>
								<p>Join our mailing list and/or follow us on Twitter to keep up to date on NCDevCon news and announcements.</p>
								<p><i class="text-info icon-twitter"></i> Follow <a href="https://twitter.com/ncdevcon" title="Follow us at @ncdevcon">@ncdevcon</a></p>

								<!-- Begin MailChimp Signup Form -->
								<div>
									<form action="http://ncdevcon.us5.list-manage.com/subscribe/post?u=decde6098798f0901110dc72f&amp;id=f935cd82a9" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="form-inline" target="_blank" novalidate>
										<input type="email" value="" class="input-large" name="EMAIL" id="mce-EMAIL" placeholder="Email address" required>
										<button type="submit" class="btn btn-inverse">Join</button>
									</form>
								</div><!-- // End mc_embed_signup-->

							</div>
						</div><!-- // row -->
					</div><!-- // marketing -->
				</div> <!-- // span8 -->

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
			</div><!-- // row -->
		</div> <!-- // container -->

			<template:footer/>
		<mango:Event name="beforeHtmlBodyEnd" />

		<script type="text/javascript">
			$('#myCarousel').carousel({
				interval: 5000
			})
		</script>

	</body>
</html>