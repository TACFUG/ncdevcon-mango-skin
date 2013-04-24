<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html>
<html lang="en">
<template:header/>
<body>
<mango:Event name="beforeHtmlBodyStart" />
	<template:headernav/>
		<!-- main content -->
		<div class="container">
			<div class="row-fluid">
				<div class="span8">
					<mango:Archive pageSize="10">
						<mango:ArchiveProperty ifIsType="category"><h1>Entries tagged as <mango:ArchiveProperty title /></h1></mango:ArchiveProperty>
						<mango:ArchiveProperty ifIsType="month"><h2>Entries for month: <mango:ArchiveProperty title dateformat="mmmm yyyy"  /></h2></mango:ArchiveProperty>
						<mango:ArchiveProperty ifIsType="day"><h2>Entries for day: <mango:ArchiveProperty title dateformat="dd mmmm yyyy" /></h2></mango:ArchiveProperty>
						<mango:ArchiveProperty ifIsType="year"><h2>Entries for year: <mango:ArchiveProperty title dateformat="yyyy" /></h2></mango:ArchiveProperty>
						<mango:ArchiveProperty ifIsType="search"><h2>Search results for <span class="green"><mango:ArchiveProperty title format="escapedHtml" /></h2></mango:ArchiveProperty>
						<mango:ArchiveProperty ifIsType="author"><h2>Entries by '<mango:ArchiveProperty title />'</h2></mango:ArchiveProperty>
						<mango:ArchiveProperty ifIsType="unknown"><h2>No archives</h2></mango:ArchiveProperty>

						<mango:Posts count="10">
							<mango:Post>
								<h2><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></h2>
								<p class="post-date"><mango:PostProperty date dateformat="mmmm dd, yyyy" /></p>

								<mango:PostProperty ifhasExcerpt excerpt />
								<mango:PostProperty ifNotHasExcerpt body />

								<div class="post-footer">
									<mango:Event name="beforePostContentEnd" template="archives" mode="excerpt" />
								</div>

								<p class="postmeta">
									<mango:PostProperty ifhasExcerpt><a href="<mango:PostProperty link />" class="readmore">Read more</a> |</mango:PostProperty>
									<mango:PostProperty ifcommentsallowed><a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />" class="comment"><i class="icon-comment"></i> <mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a> &nbsp; </mango:PostProperty>
									<mango:Categories ifCountGT="0" count="1"><i class="icon-tags"></i> </mango:Categories><mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>, </mango:Category></mango:Category></mango:Categories>
								</p>
							</mango:Post>
						</mango:Posts>

						<div class="page-navigation">
							<mango:ArchiveProperty ifHasNextPage><div class="pull-left"><a href="<mango:ArchiveProperty link pageDifference="1" />"><i class="icon-chevron-left"></i> Older Entries</a></div></mango:ArchiveProperty>
							<mango:ArchiveProperty ifHasPreviousPage><div class="pull-right"><a href="<mango:ArchiveProperty link pageDifference="-1" />">Newer Entries <i class="icon-chevron-right"></i></a></div></mango:ArchiveProperty>
						</div>
					</mango:Archive>
				</div>
				<div class="span4">
					<mangox:PodGroup locationId="sidebar" template="archives">
						<mangox:TemplatePod id="blog-description" title="About">
							<p><mango:Blog description descriptionParagraphFormat /></p>
						</mangox:TemplatePod>
						<template:sidebar />
					</mangox:PodGroup>
				</div>
			</div><!-- // row -->
		</div> <!-- // container -->
		<template:footer/>
		<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>