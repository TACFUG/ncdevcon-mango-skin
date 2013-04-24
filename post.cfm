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
					<div class="span12">


						<!--- entry --->
						<h2><mango:PostProperty title /></h2>
						<div class="post-meta well well-small">
							<span class="meta-date">
							<i class="icon-calendar"></i> <mango:PostProperty date dateformat="mmmm d, yyyy" />
							</span>
							<span class="meta-tag">
							<i class="icon-tags"></i> <mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories>
							</span>
							<span class="meta-comment pull-right">
							<i class="icon-comments"></i> <mango:PostProperty ifcommentsallowed><a href="<mango:PostProperty link />#comments" title="Comment on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a></mango:PostProperty>
							</span>
						</div>

						<div class="entry"><mango:PostProperty body /></div>

						<div class="entry-footer entry">
							<mango:Event name="beforePostContentEnd" template="post" mode="full" />
						</div>
						<!--- // entry --->



<mango:PostProperty ifcommentsallowed ifCommentCountGT="0">
<h3 class="comments_headers"><mango:PostProperty commentCount /> response<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty><mango:PostProperty ifCommentCountLT="1">s</mango:PostProperty><mango:PostProperty ifcommentsallowed> so far &darr;</mango:PostProperty></h3>
</mango:PostProperty>
<mango:PostProperty ifcommentsallowed ifCommentCountLT="1">
<!-- If comments are open, but there are no comments. -->
<div class="entry">
<p>There are no comments yet...Kick things off by filling out the form below.</p>
</div>
</mango:PostProperty>

<mango:PostProperty ifNotCommentsAllowed ifCommentCountGT="0">
<div class="comment-number">
<h3 class="comments_headers"><mango:PostProperty commentCount /> response<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></h3><p> (comments are now closed)	</p>
</div><!--end comment-number-->
</mango:PostProperty>
<mango:Comments>
<mango:Comment>
<blockquote<mango:CommentProperty ifIsAuthor> class="author"</mango:CommentProperty>>
<p><strong><mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty> </strong> - <mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /><p>
<mango:CommentProperty content /></blockquote>
</mango:Comment>
</mango:Comments>

<mango:PostProperty ifcommentsallowed>
<!-- Comment Form -->
<h3 id="respond" class="comments_headers">Leave a Comment</h3>
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
<input id="author" type="text" name="comment_name" value="<mango:RequestVar name='comment_name' />" />
</div>
<div>
<label for="email">Mail (it will not be displayed)</label>
<input type="text" id="email" name="comment_email" value="<mango:RequestVar name='comment_email' />" />
</div>
<div>
<label for="url">Website</label>
<input type="text" id="url" name="comment_website" size="30" value="<mango:RequestVar name='comment_website' />"  />
</div>
</mango:AuthenticatedAuthor>
<div>
<label for="comment_content">Your comments</label>
<textarea id="comment_content" name="comment_content" rows="7"><mango:RequestVar name="comment_content" /></textarea>
</div>
<div>
<label for="subscribe">Subscribe to this comment thread</label>
<input type="checkbox" id="subscribe" name="comment_subscribe" value="1" />
</div>
<div>
<input name="submit" class="button" type="submit" id="submit" value="Submit" />
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



					</div><!-- // container -->
				<template:footer/>

		<mango:Event name="beforeHtmlBodyEnd" />
			</mango:Post>
	</body>
</html>