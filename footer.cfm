
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
&copy; <cfoutput>#Year(now())#</cfoutput> <mango:Blog title /> &mdash; <a href="http://www.mangoblog.org" title="Mango Blog - A free ColdFusion blog engine">Powered by Mango Blog</a>
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