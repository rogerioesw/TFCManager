
<%@ page import="tfcmanager.Formula" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formula.label', default: 'Formula')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formula" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-formula" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formula">
			
				<g:if test="${formulaInstance?.coordenador}">
				<li class="fieldcontain">
					<span id="coordenador-label" class="property-label"><g:message code="formula.coordenador.label" default="Coordenador" /></span>
					
						<span class="property-value" aria-labelledby="coordenador-label"><g:fieldValue bean="${formulaInstance}" field="coordenador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaInstance?.orientador}">
				<li class="fieldcontain">
					<span id="orientador-label" class="property-label"><g:message code="formula.orientador.label" default="Orientador" /></span>
					
						<span class="property-value" aria-labelledby="orientador-label"><g:fieldValue bean="${formulaInstance}" field="orientador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaInstance?.banca}">
				<li class="fieldcontain">
					<span id="banca-label" class="property-label"><g:message code="formula.banca.label" default="Banca" /></span>
					
						<span class="property-value" aria-labelledby="banca-label"><g:fieldValue bean="${formulaInstance}" field="banca"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaInstance?.preprojetoTFCI}">
				<li class="fieldcontain">
					<span id="preprojetoTFCI-label" class="property-label"><g:message code="formula.preprojetoTFCI.label" default="Preprojeto TFCI" /></span>
					
						<span class="property-value" aria-labelledby="preprojetoTFCI-label"><g:fieldValue bean="${formulaInstance}" field="preprojetoTFCI"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="formula.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${formulaInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formulaInstance?.disciplina}">
				<li class="fieldcontain">
					<span id="disciplina-label" class="property-label"><g:message code="formula.disciplina.label" default="Disciplina" /></span>
					
						<span class="property-value" aria-labelledby="disciplina-label"><g:link controller="disciplina" action="show" id="${formulaInstance?.disciplina?.id}">${formulaInstance?.disciplina?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:formulaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formulaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
