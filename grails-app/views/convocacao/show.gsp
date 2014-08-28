
<%@ page import="tfcmanager.Convocacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'convocacao.label', default: 'Convocacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-convocacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-convocacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list convocacao">
			
				<g:if test="${convocacaoInstance?.ano}">
				<li class="fieldcontain">
					<span id="ano-label" class="property-label"><g:message code="convocacao.ano.label" default="Ano" /></span>
					
						<span class="property-value" aria-labelledby="ano-label"><g:fieldValue bean="${convocacaoInstance}" field="ano"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${convocacaoInstance?.assunto}">
				<li class="fieldcontain">
					<span id="assunto-label" class="property-label"><g:message code="convocacao.assunto.label" default="Assunto" /></span>
					
						<span class="property-value" aria-labelledby="assunto-label"><g:fieldValue bean="${convocacaoInstance}" field="assunto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${convocacaoInstance?.mensagem}">
				<li class="fieldcontain">
					<span id="mensagem-label" class="property-label"><g:message code="convocacao.mensagem.label" default="Mensagem" /></span>
					
						<span class="property-value" aria-labelledby="mensagem-label"><g:fieldValue bean="${convocacaoInstance}" field="mensagem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${convocacaoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="convocacao.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${convocacaoInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${convocacaoInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="convocacao.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${convocacaoInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${convocacaoInstance?.professorhasConvocacao}">
				<li class="fieldcontain">
					<span id="professorhasConvocacao-label" class="property-label"><g:message code="convocacao.professorhasConvocacao.label" default="Professorhas Convocacao" /></span>
					
						<g:each in="${convocacaoInstance.professorhasConvocacao}" var="p">
						<span class="property-value" aria-labelledby="professorhasConvocacao-label"><g:link controller="professor_has_Convocacao" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:convocacaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${convocacaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
