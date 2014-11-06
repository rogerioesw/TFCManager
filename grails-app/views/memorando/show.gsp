
<%@ page import="tfcmanager.Memorando" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'memorando.label', default: 'Memorando')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-memorando" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-memorando" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list memorando">
			
				<g:if test="${memorandoInstance?.ano}">
				<li class="fieldcontain">
					<span id="ano-label" class="property-label"><g:message code="memorando.ano.label" default="Ano" /></span>
					
						<span class="property-value" aria-labelledby="ano-label"><g:fieldValue bean="${memorandoInstance}" field="ano"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memorandoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="memorando.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${memorandoInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memorandoInstance?.assunto}">
				<li class="fieldcontain">
					<span id="assunto-label" class="property-label"><g:message code="memorando.assunto.label" default="Assunto" /></span>
					
						<span class="property-value" aria-labelledby="assunto-label"><g:fieldValue bean="${memorandoInstance}" field="assunto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memorandoInstance?.mensagem}">
				<li class="fieldcontain">
					<span id="mensagem-label" class="property-label"><g:message code="memorando.mensagem.label" default="Mensagem" /></span>
					
						<span class="property-value" aria-labelledby="mensagem-label"><g:fieldValue bean="${memorandoInstance}" field="mensagem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memorandoInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="memorando.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${memorandoInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memorandoInstance?.professor}">
				<li class="fieldcontain">
					<span id="professor-label" class="property-label"><g:message code="memorando.professor.label" default="Professor" /></span>
					
						<g:each in="${memorandoInstance.professor}" var="p">
						<span class="property-value" aria-labelledby="professor-label"><g:link controller="professor" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:memorandoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${memorandoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
