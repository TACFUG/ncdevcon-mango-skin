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

			<div class="container">
			<!-- main content -->
			<div class="row-fluid">
				<div class="span8">
					<mango:Posts count="2">
						<mango:Post>
						<h2><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></h2>
						<h4><mango:PostProperty date dateformat="mmmm dd, yyyy" /></h4>
						<div class="entry">
							<mango:PostProperty ifhasExcerpt excerpt>
							<p><a href="<mango:PostProperty link />" title="Read the rest of this entry">[Read more &rarr;]</a></p>
							</mango:PostProperty>
							<mango:PostProperty ifNotHasExcerpt body />
						</div>
						<div class="entry-footer entry">
						<mango:Event name="beforePostContentEnd" template="index" mode="excerpt" />
						</div>
						<p class="tagged">
							<!--- post comments --->
							<span class="add_comment">
								<mango:PostProperty ifcommentsallowed><i class="icon-comment"></i> <a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a></mango:PostProperty>
							</span>
							<!--- post tags --->
		 					<span class="display_tags">
		 						<i class="icon-tags"></i> <mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a><mango:Category ifCurrentIsNotLast>, </mango:Category></mango:Category></mango:Categories>
		 					</span>
						</p>
						<div class="clear"></div>
						</mango:Post>
					</mango:Posts>

					<!--- Previous / Next buttons --->
					<mango:Archive pageSize="2">
						<hr>
						<div class="navigation">
							<div class="previous"><mango:ArchiveProperty ifHasNextPage><a class="previous" href="<mango:ArchiveProperty link pageDifference="1" />"><i class="icon-chevron-left"></i> Previous Entries</a></mango:ArchiveProperty></div>
							<div class="next"></div>
					</div>
					</mango:Archive>
				</div>
				<div class="span4">
					<!--- sidebar --->
					<ul class="sidebar_list">
						<mangox:PodGroup locationId="sidebar" template="index">
							<mangox:TemplatePod id="blog-description" title="WTF">
							<p><mango:Blog description descriptionParagraphFormat /></p>
							</mangox:TemplatePod>
							<template:sidebar />
						</mangox:PodGroup>
					</ul>
				</div>
			</div>
		</div>

		<template:footer/>

		<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>