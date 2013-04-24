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
			<!-- main content -->
			<div class="row-fluid">
				<div class="span12">

					<mango:Page>
						<h2><mango:PageProperty title /></h2>
					</mango:Page>

					<ul>
						<mango:Archives type="month"><mango:Archive>
							<li><mango:ArchiveProperty title dateformat="mmmm yyyy" /></li>

							<ul>
								<mango:Posts>
									<mango:Post>
										<li><mango:PostProperty date dateformat="mm/dd"/> - <a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></li>
									</mango:Post>
							 	</mango:Posts>
							</ul>

						</mango:Archive></mango:Archives>
					</ul>
				</div>
		</div>
		<template:footer/>
		<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>