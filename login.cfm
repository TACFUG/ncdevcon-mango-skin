<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html>
<html lang="en">
<template:header robots="noindex,nofollow"/>
<body>
	<mango:Event name="beforeHtmlBodyStart" />

		<!--- global page header / nav --->
		<template:headernav/>

		<!-- main content -->
		<div class="container">
			<div class="row-fluid">
					<h2>Login</h2>
					<mango:RequestVar ifExists="errormsg">
						<p><span class="label label-important"><mango:RequestVar name="errormsg" /></span></p>
					</mango:RequestVar>

					<cfoutput>
						<form action="<mangox:Environment selfUrl />" method="post" id="login_form" class="form-inline">
							<input name="username" id="username" value="" type="text" class="input-medium" placeholder="Username">
						  <input name="password" id="password" value="" type="password" class="input-medium" placeholder="Password">
						  <button type="submit" name="login" value"Login" class="btn">Login</button>
						</form>
					</cfoutput>
			</div> <!-- // row -->
		</div><!--// main content -->

		<template:footer/>

		<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>