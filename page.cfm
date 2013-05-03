<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html>
<html lang="en">
<template:header />
<body>
	<mango:Event name="beforeHtmlBodyStart" />
		<template:headernav/>
			<mango:Page>
				<div class="container">
					<div class="row-fluid">
						<div class="span8">
				     	<h2><mango:PageProperty title /></h2>

							<mango:PageProperty body />

							<div class="post-footer">
								<mango:Event name="beforePageContentEnd" template="page" mode="full" />
							</div>

							<div id="comments">
								<mango:PageProperty ifNotCommentsAllowed ifCommentCountGT="0">
									<div class="comment-number">
										<h4 class="comments_headers"><mango:PageProperty commentCount /> response<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty></h4><p>(comments are now closed)</p>
									</div>
								</mango:PageProperty>

								<mango:PageProperty ifcommentsallowed>
									<h4 class="comments_headers"><mango:PageProperty commentCount /> response<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty><mango:PageProperty ifCommentCountLT="1">s</mango:PageProperty><mango:PageProperty ifcommentsallowed> so far </mango:PageProperty></h4>
								</mango:PageProperty>


							<mango:Comments>
								<mango:Comment>
									<blockquote<mango:CommentProperty ifIsAuthor> class="author"</mango:CommentProperty>>
										<p><strong><mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty> </strong> - <mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /></p>
										<mango:CommentProperty content />
									</blockquote>
								</mango:Comment>
							</mango:Comments>

							<mango:PageProperty ifcommentsallowed>
								<!-- Comment Form -->
								<h4 id="respond" class="comments_headers">Leave a Comment</h4>

								<mango:Message ifMessageExists type="comment" status="error">
									<div class="alert alert-error"><i class="icon-warning-sign"></i> There was a problem: <mango:Message text /></div>
								</mango:Message>

								<mango:Message ifMessageExists type="comment" status="success">
									<div class="alert alert-success"><i class="icon-ok"></i> <mango:Message text /></div>
								</mango:Message>

								<form method="post" action="#respond" id="comment_form">

								<mango:AuthenticatedAuthor ifNotIsLoggedIn>
									<div>
										<label for="comment_name">Name</label>
										<input id="comment_name" type="text" name="comment_name" value="<mango:RequestVar name='comment_name' />" />
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
									<textarea class="span4" id="comment_content" name="comment_content" rows="5"><mango:RequestVar name="comment_content" /></textarea>
								</div>
								<div>
									<label class="checkbox inline" for="subscribe">
										<input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> Subscribe to this comment thread
									</label>
								</div>

								<mango:Event name="beforeCommentFormEnd" />

								<div>
									<button type="submit" name="submit" value="Submit" class="btn btn-primary">Submit Comment</button>
								</div>

								<!--- Hidden fields --->
								<input type="hidden" name="action" value="addComment" />
								<input type="hidden" name="comment_post_id" value="<mango:PageProperty id />" />
								<input type="hidden" name="comment_parent" value="" />
								<mango:AuthenticatedAuthor ifIsLoggedIn>
									You are logged in as <mango:AuthorProperty name />
									<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
									<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
									<input type="hidden" name="comment_website" value="<mango:Blog url />" />
								</mango:AuthenticatedAuthor>
								</form>
							</mango:PageProperty>
							</div> <!-- // comments -->
						</div><!-- End content -->

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

				</div> <!-- // container -->
			</mango:Page>
		<template:footer/>
	<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>