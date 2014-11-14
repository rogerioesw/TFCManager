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
		<h1>Memorando</h1>
		 <g:jasperReport jasper="anexo37" format="PDF" name="Formulário">
		    <br/>
		    Memorando: <g:select id="memorando" name="id_mem" from="${tfcmanager.Memorando.list()}" optionKey="id" required="" value="${memorandoInstance?.assunto?.id}"/><br><br>
		 	
		 	
		</g:jasperReport>
	</body>
</html>