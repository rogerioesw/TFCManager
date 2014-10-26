<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Upload de Arquivos</title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<h1>Upload de Arquivos</h1>
		<fileuploader:form	upload="docs"
                                  successAction="create"
                                  successController="documentos"
                                  errorAction="index"
                                  errorController="documentos" 
			/>
	</body>
</html>