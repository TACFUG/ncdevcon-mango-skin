<cfsilent>
	<cfimport prefix="mango" taglib="../../tags/mango" />
	<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
	<cfimport prefix="template" taglib="." />
	<cfparam name="attributes.robots" default="index,follow">
</cfsilent>
<cfif thisTag.executionMode EQ "start">

<hr>
<div class="footer">
<mango:Event name="afterFooterStart" />
&copy; <cfoutput>#Year(now())#</cfoutput> <mango:Blog title /> &mdash; Powered by <a href="http://www.mangoblog.org" title="Mango Blog - A free ColdFusion blog engine">Mango Blog</a>
, <a href="http://twitter.github.io/bootstrap/">Twitter Bootstrap</a>
, <a href="http://www.adobe.com/products/coldfusion-family.html">ColdFusion</a>
<mango:Event name="beforeFooterEnd" />
</div>

<!--- javascript --->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="<mango:Blog skinurl />assets/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.dropdown-toggle').dropdown()
	});
</script>
</cfif>