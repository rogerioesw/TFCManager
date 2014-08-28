
<%@ page import="tfcmanager.PesoAvaliacao_has_TFC" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pesoAvaliacao_has_TFC.label', default: 'PesoAvaliacao_has_TFC')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pesoAvaliacao_has_TFC" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pesoAvaliacao_has_TFC" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pesoAvaliacao_has_TFC">
			
				<g:if test="${pesoAvaliacao_has_TFCInstance?.notafinal}">
				<li class="fieldcontain">
					<span id="notafinal-label" class="property-label"><g:message code="pesoAvaliacao_has_TFC.notafinal.label" default="Notafinal" /></span>
					
						<span class="property-value" aria-labelledby="notafinal-label"><g:fieldValue bean="${pesoAvaliacao_has_TFCInstance}" field="notafinal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pesoAvaliacao_has_TFCInstance?.situacao}">
				<li class="fieldcontain">
					<span id="situacao-label" class="property-label"><g:message code="pesoAvaliacao_has_TFC.situacao.label" default="Situacao" /></span>
					
						<span class="property-value" aria-labelledby="situacao-label"><g:fieldValue bean="${pesoAvaliacao_has_TFCInstance}" field="situacao"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pesoAvaliacao_has_TFCInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pesoAvaliacao_has_TFCInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
