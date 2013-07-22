<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html>
<html lang="en">
<template:header/>
<body>
	<mango:Post>
		<mango:Event name="beforeHtmlBodyStart" />
		<template:headernav/>
			<div class="container">
				<!-- main content -->
				<div class="row-fluid">
					<div class="span8">


						<!--- entry --->
						<h2><mango:PostProperty title /></h2>
						<div class="post-meta well well-small">
							<span class="meta-date">
							<i class="icon-calendar"></i> <mango:PostProperty date dateformat="mmmm d, yyyy" />
							</span>
							<span class="meta-tag">
							<mango:Categories><i class="icon-tags"></i> <mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories>
							</span>
							<span class="meta-comment pull-right">
							<mango:PostProperty ifcommentsallowed><i class="icon-comments"></i> <a href="<mango:PostProperty link />#comments" title="Comment on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a></mango:PostProperty>
							</span>
						</div>

						<div class="entry"><mango:PostProperty body /></div>

						<div class="entry-footer entry">
							<mango:Event name="beforePostContentEnd" template="post" mode="full" />
						</div>
						<!--- // entry --->

<br>
<h3>Ready to Register for NCDevCon 2013?</h3>
<p><a href="http://www.eventbrite.com/event/3327772457?ref=ebtnebregn" target="_blank"><img style="padding: 10px 35px;" src="http://www.eventbrite.com/custombutton?eid=3327772457" alt="Eventbrite - NCDevCon 2013 - North Carolina's Premier Web Conference" /></a></p>
<br>


<mango:PostProperty ifcommentsallowed ifCommentCountGT="0">
<h4 class="comments_headers"><i class="icon-comments"></i> <mango:PostProperty commentCount /> response<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty><mango:PostProperty ifCommentCountLT="1">s</mango:PostProperty><mango:PostProperty ifcommentsallowed> so far</mango:PostProperty></h4>
</mango:PostProperty>
<mango:PostProperty ifcommentsallowed ifCommentCountLT="1">
<!-- If comments are open, but there are no comments. -->
<div class="entry">
<p><i class="icon-comments"></i> There are no comments yet...Kick things off by filling out the form below.</p>
</div>
</mango:PostProperty>

<mango:PostProperty ifNotCommentsAllowed ifCommentCountGT="0">
<div class="comment-number">
<h4 class="comments_headers"><i class="icon-comments"></i> <mango:PostProperty commentCount /> response<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></h4>
<p>(comments are now closed)</p>
</div><!--end comment-number-->
</mango:PostProperty>

		<ul id="comment_list" class="unstyled">
			<mango:Comments>
			<mango:Comment>
			<li class="comment <mango:CommentProperty ifIsAuthor> highlighted</mango:CommentProperty>" id="comment-<mango:CommentProperty id />">
				<span class="comment_meta">
					<!--- <span class="comment_num"><a href="#comment-<mango:CommentProperty id />" title="Permalink to this comment"><mango:CommentProperty currentCount /></a></span> --->
						<strong><mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty> </strong>
						<span class="comment_time">// <mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /></span>
				</span>
				<div class="entry">
					 <mango:CommentProperty content />
				</div>
				<br>
			</li>
			</mango:Comment>
			</mango:Comments>
		</ul>
		







<mango:PostProperty ifcommentsallowed>
<!-- Comment Form -->
<h4 id="respond" class="comments_headers">Leave a Comment</h4>
<mango:Message ifMessageExists type="comment" status="error">
<p class="error">There was a problem: <mango:Message text /></p>
</mango:Message>
<mango:Message ifMessageExists type="comment" status="success">
<p class="message"><mango:Message text /></p>
</mango:Message>

<form method="post" action="#respond" id="comment_form">
<fieldset>

<mango:AuthenticatedAuthor ifNotIsLoggedIn>
<div>
<label for="author">Name</label>
<input id="author" class="input-xlarge" type="text" name="comment_name" value="<mango:RequestVar name='comment_name' />" />
</div>
<div>
<label for="email">Mail (it will not be displayed)</label>
<input type="text" class="input-xlarge"  id="email" name="comment_email" value="<mango:RequestVar name='comment_email' />" />
</div>
<div>
<label for="url">Website</label>
<input type="text" class="input-xlarge"  id="url" name="comment_website" size="30" value="<mango:RequestVar name='comment_website' />"  />
</div>
</mango:AuthenticatedAuthor>
<div>
<label for="comment_content">Your comments</label>
<textarea id="comment_content" class="input-xxlarge"  name="comment_content" rows="5"><mango:RequestVar name="comment_content" /></textarea>
</div>
<div>
<label class="checkbox">
	<input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> Subscribe to this comment thread
</label>
</div>
<div>
<input name="submit" class="btn btn-primary" type="submit" id="submit" value="Submit" />
</div>
<!--- Hidden fields --->
<input type="hidden" name="action" value="addComment" />
<input type="hidden" name="comment_post_id" value="<mango:PostProperty id />" />
<input type="hidden" name="comment_parent" value="" />
<mango:AuthenticatedAuthor ifIsLoggedIn>
You are logged in as <mango:AuthorProperty name />
<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
<input type="hidden" name="comment_website" value="<mango:Blog url />" />
</mango:AuthenticatedAuthor>
<mango:Event name="beforeCommentFormEnd" />
</fieldset>
</form>
</mango:PostProperty>
</div><!-- // end row -->

<!-- sidebar --> <div class="span4"> <ul class="sidebar_list"> <mangox:PodGroup locationId="sidebar" template="index"> <mangox:TemplatePod id="blog-description" title="WTF"> <p><mango:Blog description descriptionParagraphFormat /></p> </mangox:TemplatePod> <template:sidebar /> </mangox:PodGroup> </ul> </div>
</div><!-- // container -->

	<template:footer/>

		<mango:Event name="beforeHtmlBodyEnd" />
			</mango:Post>
	</body>
</html>