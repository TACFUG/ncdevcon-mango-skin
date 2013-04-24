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
						<div class="pull-right">
							<ul class="nav">
								<mango:Pages>
									<mango:Page>
										<mango:PageProperty ifHasCustomField="topnav">
											<li><a href="<mango:PageProperty link/>" title="<mango:PageProperty title />"><i class="icon-<mango:PageProperty customField='topnav' />"></i> <mango:PageProperty title /></a></li>
										</mango:pageProperty>
									</mango:Page>
								</mango:Pages>

								<!--- social media icons --->
								<li><a class="dropdown-toggle" data-toggle="dropdown" href="#" title="Keep up with NCDevCon"><i class="icon-comments-alt"></i> Social <b class="caret"></b></a>
									<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
										<li><a href="" title="Find NCDevCon on Twitter"><i class="icon-twitter"></i> Twitter</a></li>
										<li><a href="" title="Find NCDevCon on Facebook"><i class="icon-facebook"></i> Facebook</a></li>
										<li><a href="" title="Share your NCDevCon photos on Flikr"><i class="icon-camera"></i> Flickr</a></li>
										<li><a href="" title="Follow NCDevCon via RSS"><i class="icon-rss"></i> RSS</a></li>
									</ul>
								</li>
							</ul>

							<form name="searchForm" id="search_form" class="navbar-form pull-right" method="get" action="<mango:Blog searchUrl />">
								<input type="text" class="input-medium" placeholder="Search" name="term" value="" id="term" />
								<input type="hidden" id="searchsubmit" value="Search" />
							</form>
					</div>

					</div><!--//nav-collapse -->
				</div><!-- // container -->
			</div><!-- // navbar-inner -->
		</div>
		<!--- main pages nav --->
		<div class="container masthead">
				<div class="row-fluid">
					<div class="span6 logo">
						<img src="<mango:Blog skinurl />assets/img/ncdevcon-logo.png" align="left">
						<div class="logobox">
							<h1><a href="<mango:Blog url />"><mango:Blog title /></a></h1>
							<span class="tagline"><mango:Blog tagline /></span>
						</div>
					</div>
					<div class="span6 datelocation text-right">
						<span><mango:Blog description /></span>
					</div>
				</div> <!-- // row -->

				<div class="navbar navbar-inverse">
					<div class="navbar-inner">
						<div class="container">
							<ul class="nav">
								<li>
									<a class="active" href="<mango:Blog basePath />" title="Home">Home</a>
								</li>

								<mango:Pages>
									<mango:Page>
										<mango:PageProperty ifHasCustomField="mainnav">
											<li><a href="<mango:PageProperty link/>" title="<mango:PageProperty title />"><mango:PageProperty title /></a></li>
										</mango:pageProperty>
									</mango:Page>
								</mango:Pages>
							</ul>
						</div>
					</div>
				</div><!-- // navbar -->
		</div> <!-- // container -->
	</header>
</cfif>



