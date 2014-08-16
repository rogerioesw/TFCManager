
<%@ page import="tfcmanager.BancaDefesa_has_Professor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bancaDefesa_has_Professor.label', default: 'BancaDefesa_has_Professor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bancaDefesa_has_Professor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bancaDefesa_has_Professor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bancaDefesa_has_Professor">
			
				<g:if test="${bancaDefesa_has_ProfessorInstance?.banca}">
				<li class="fieldcontain">
					<span id="banca-label" class="property-label"><g:message code="bancaDefesa_has_Professor.banca.label" default="Banca" /></span>
					
						<span class="property-value" aria-labelledby="banca-label"><g:link controller="bancaDefesa" action="show" id="${bancaDefesa_has_ProfessorInstance?.banca?.id}">${bancaDefesa_has_ProfessorInstance?.banca?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bancaDefesa_has_ProfessorInstance?.nota}">
				<li class="fieldcontain">
					<span id="nota-label" class="property-label"><g:message code="bancaDefesa_has_Professor.nota.label" default="Nota" /></span>
					
						<span class="property-value" aria-labelledby="nota-label"><g:fieldValue bean="${bancaDefesa_has_ProfessorInstance}" field="nota"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bancaDefesa_has_ProfessorInstance?.observacao}">
				<li class="fieldcontain">
					<span id="observacao-label" class="property-label"><g:message code="bancaDefesa_has_Professor.observacao.label" default="Observacao" /></span>
					
						<span class="property-value" aria-labelledby="observacao-label"><g:fieldValue bean="${bancaDefesa_has_ProfessorInstance}" field="observacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bancaDefesa_has_ProfessorInstance?.professor}">
				<li class="fieldcontain">
					<span id="professor-label" class="property-label"><g:message code="bancaDefesa_has_Professor.professor.label" default="Professor" /></span>
					
						<span class="property-value" aria-labelledby="professor-label"><g:link controller="professor" action="show" id="${bancaDefesa_has_ProfessorInstance?.professor?.id}">${bancaDefesa_has_ProfessorInstance?.professor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bancaDefesa_has_ProfessorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bancaDefesa_has_ProfessorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
