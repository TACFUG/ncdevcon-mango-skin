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
				<div class="span12">
					<h2 class="error"><mango:Message title /></h2>
					<mango:Message text />
					<mango:Message data />
				</div>
			</div><!-- // row -->
		</div> <!-- // container -->
		<template:footer/>
		<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>