<cfsilent>
	<cfimport prefix="mango" taglib="../../tags/mango" />
	<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
	<cfimport prefix="template" taglib="." />
</cfsilent>
<cfif thisTag.executionMode EQ "start">
	<header>
		<div class="navbar navbar-static-top"> <!--- navbar-inverse --->
			<div class="navbar-inner">
				<div class="container">
					<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
					<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="nav-collapse collapse">
						<ul class="nav pull-right">
							<li><a href="#" title="Frequently Asked Questions"><i class="icon-question-sign"></i>  FAQ</a></li>
							<li><a href="#about" title="NCDevCon Code of Conduct"><i class="icon-check"></i> Code Of Conduct</a></li>
							<li><a href="#contact" title="Contact NCDevCon"><i class="icon-envelope"></i> Contact</a></li>
							<li><a href=""><i class="icon-twitter"></i> Twitter</a></li>
							<li><a href=""><i class="icon-rss"></i> RSS</a></li>
						</ul>
					</div><!--/.nav-collapse -->
				</div>
			</div>
		</div>
		<!--- main pages nav --->
		<div class="container">
			<div class="masthead">
				<div class="logo">
					<img src="<mango:Blog skinurl />assets/img/ncdevcon-logo.png" align="left">
						<div class="title">
							<h1><a href="<mango:Blog url />"><mango:Blog title /></a></h1>
							<span class="tagline"><mango:Blog tagline /></span>
						</div>
				</div>
				<div class="navbar">
					<div class="navbar-inner">
						<div class="container">
							<ul class="nav">
								<li>
									<a class="active" href="<mango:Blog basePath />" title="Home">Home</a>
								</li>
								<mango:Pages>
									<mango:Page>
										<li>
											<a href="<mango:PageProperty link>" title="<mango:PageProperty title />"><mango:PageProperty title /></a>
										</li>
									</mango:Page>
								</mango:Pages>
							</ul>
						</div>
					</div>
				</div><!-- // navbar -->
			</div><!-- // masthead -->
		</div> <!-- // container -->
	</header>
</cfif>



