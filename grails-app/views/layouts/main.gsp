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
		
		<div id="controller-list" role="navigation">
			<ul id="menu">
				<li>Cadastros
					<ul>
						<li><g:link controller="aluno">Cadastro de Alunos</g:link></li>
						<li><g:link controller="professor">Cadastro de Professores</g:link></li>
						<li><g:link controller="faculdade">Cadastro de Faculdade</g:link></li>
						<li><g:link controller="disciplina">Cadastro de Disciplinas</g:link></li>
						<li>Horários Semanais
							<ul>
								<li><g:link controller="horarioSemanal">Cadastro de Horários Semanais</g:link></li>
								<li><g:link controller="aluno_has_HorarioSemanal">Horários Disponíveis para Alunos</g:link></li>
								<li><g:link controller="professor_has_HorarioSemanal">Horários Disponíveis para Professores</g:link></li>
							</ul>
						</li>
						<li><g:link controller="seminario">Cadastro de Seminários</g:link></li>
						<li>Banca de Defesa
							<ul>
								<li><g:link controller="bancaDefesa">Cadastro de Banca de Defesa</g:link></li>
								<li><g:link controller="bancaDefesa_has_Professor">Cadastro de Avaliadores da Banca</g:link></li>
							</ul>
						</li>
						<li><g:link controller="TFC">Cadastro de TFCs</g:link></li>
						<li><g:link controller="TFC_has_Professor">Cadastro de Orientadores</g:link></li>
						<li>Usuários
							<ul>
								<li><g:link controller="usuario">Cadastro de Usuários</g:link></li>
								<li><g:link controller="usuarioPapel">Autorização de Usuários</g:link></li>
							</ul>
						</li>		
					</ul>
				</li>
				<li>Lançamentos
					<ul>
						<li><g:link controller="documentos">Lançamento de Documentos</g:link></li>
						<li><g:link controller="ufile">Upload de Arquivos</g:link></li>
						<li><g:link controller="convocacao">Convocações</g:link></li>
						<li><g:link controller="memorando">Memorandos</g:link></li>
						<li><g:link controller="presencaOrientacao">Lançamento de Presenças</g:link></li>
						
					</ul>
				</li>
				<li>Notas
					<ul>
						<li><g:link controller="avaliacaoTFC">Lançamento de Notas</g:link></li>
					</ul>
				</li>
				<li><g:link controller="relatorios">Relatórios</g:link>
				</li>
			</ul>
		</div>
		
		
		
		<sec:ifNotLoggedIn>
  			<g:link controller="login" action="auth">Login</g:link>
		</sec:ifNotLoggedIn>
		
		
		<sec:ifLoggedIn>
			<sec:username /> (<g:link controller="logout">Logout</g:link>)
		</sec:ifLoggedIn>
		
		<g:layoutBody/>
		<div id="footer">
			<g:render template="/common/footer" />
		</div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<r:layoutResources />
	</body>
</html>
