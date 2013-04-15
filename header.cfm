<cfsilent>
	<cfimport prefix="mango" taglib="../../tags/mango" />
	<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
	<cfimport prefix="template" taglib="." />
	<cfparam name="attributes.robots" default="index,follow">
</cfsilent>
<cfif thisTag.executionMode EQ "start">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
	<title><mango:Blog title /> &#8212; <mango:Blog tagline /></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="generator" content="Mango <mango:Blog version />" />
	<meta name="description" content="<mango:Blog description />" />
	<meta name="robots" content="<cfoutput>#attributes.robots#</cfoutput>" />

	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />
	<link rel="alternate" type="application/atom+xml" title="Atom" href="<mango:Blog atomurl />" />
	<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />
	<link rel="shortcut icon" href="<mango:Blog skinurl />assets/images/favicon.ico"/>

	<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/bootstrap.min.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/bootstrap-responsive.min.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/font-awesome.min.css">
	<!--[if IE 7]>
	<link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css">
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="<mango:Blog skinurl />assets/css/main.css"  media="all" />
	<link rel="stylesheet" type="text/css" href="<mango:Blog skinurl />assets/css/custom.css"  media="all" />
	<link href='http://fonts.googleapis.com/css?family=Lato:900' rel='stylesheet' type='text/css'>
	<mango:Event name="beforeHtmlHeadEnd" />
</head>
</cfif>
