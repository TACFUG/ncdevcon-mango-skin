
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

</cfif>


