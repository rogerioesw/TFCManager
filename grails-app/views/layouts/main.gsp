<!DOCTYPE html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="TFC Manager"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		
		<link href="http://cdn.kendostatic.com/2014.2.903/styles/kendo.common.min.css" rel="stylesheet" />
    	<link href="http://cdn.kendostatic.com/2014.2.903/styles/kendo.default.min.css" rel="stylesheet" />
    	<link href="http://cdn.kendostatic.com/2014.2.903/styles/kendo.dataviz.min.css" rel="stylesheet" />
    	<link href="http://cdn.kendostatic.com/2014.2.903/styles/kendo.dataviz.default.min.css" rel="stylesheet" />
    	<script src="http://cdn.kendostatic.com/2014.2.903/js/jquery.min.js"></script>
    	<script src="http://cdn.kendostatic.com/2014.2.903/js/angular.min.js"></script>
    	<script src="http://cdn.kendostatic.com/2014.2.903/js/kendo.all.min.js"></script>
		
		<g:layoutHead/>
		<g:javascript library="application"/>		
		<r:layoutResources />
	</head>
	<body>
		
		<div id="header">
			<g:render template="/common/header" />
		</div>
		<g:layoutBody/>
		<div id="footer">
			<g:render template="/common/footer" />
		</div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<r:layoutResources />
	</body>
</html>
