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
		<h1>Declaração de Correção de Banca</h1>
		 <g:jasperReport jasper="anexo11" format="PDF" name="Formulário">
		    <br/>
		    Projeto: <g:select id="tfc" name="id_tfc" from="${tfcmanager.TFC.list()}" optionKey="id" required="" value="${tfcInstance?.projeto?.id}"/><br><br>
		 	
		</g:jasperReport>
	</body>
</html>