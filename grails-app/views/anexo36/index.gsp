<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Relatórios</title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<h1>Convocação</h1>
		 <g:jasperReport jasper="anexo36" format="PDF" name="Formulário">
		    <br/>
		    Convocação: <g:select id="convocacao" name="id_conv" from="${tfcmanager.Convocacao.list()}" optionKey="id" required="" value="${convocacaoInstance?.assunto?.id}"/><br><br>
		 	
		 	
		</g:jasperReport>
	</body>
</html>