
<%@ page import="tfcmanager.PesoAvaliacao_has_Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pesoAvaliacao_has_Aluno.label', default: 'PesoAvaliacao_has_Aluno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pesoAvaliacao_has_Aluno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pesoAvaliacao_has_Aluno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pesoAvaliacao_has_Aluno">
			
				<g:if test="${pesoAvaliacao_has_AlunoInstance?.nota}">
				<li class="fieldcontain">
					<span id="nota-label" class="property-label"><g:message code="pesoAvaliacao_has_Aluno.nota.label" default="Nota" /></span>
					
						<span class="property-value" aria-labelledby="nota-label"><g:fieldValue bean="${pesoAvaliacao_has_AlunoInstance}" field="nota"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pesoAvaliacao_has_AlunoInstance?.peso}">
				<li class="fieldcontain">
					<span id="peso-label" class="property-label"><g:message code="pesoAvaliacao_has_Aluno.peso.label" default="Peso" /></span>
					
						<span class="property-value" aria-labelledby="peso-label"><g:link controller="pesoAvaliacao" action="show" id="${pesoAvaliacao_has_AlunoInstance?.peso?.id}">${pesoAvaliacao_has_AlunoInstance?.peso?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pesoAvaliacao_has_AlunoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pesoAvaliacao_has_AlunoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>