
<%@ page import="tfcmanager.Documentos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'documentos.label', default: 'Documentos')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-documentos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-documentos" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list documentos">
			
				<g:if test="${documentosInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="documentos.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${documentosInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentosInstance?.arquivo}">
				<li class="fieldcontain">
					<span id="arquivo-label" class="property-label"><g:message code="documentos.arquivo.label" default="Arquivo" /></span>
					
						<span class="property-value" aria-labelledby="arquivo-label"><g:link controller="UFile" action="show" id="${documentosInstance?.arquivo?.id}">${documentosInstance?.arquivo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentosInstance?.projetoorientacao}">
				<li class="fieldcontain">
					<span id="projetoorientacao-label" class="property-label"><g:message code="documentos.projetoorientacao.label" default="Projetoorientacao" /></span>
					
						<span class="property-value" aria-labelledby="projetoorientacao-label"><g:link controller="projetoOrientacao" action="show" id="${documentosInstance?.projetoorientacao?.id}">${documentosInstance?.projetoorientacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:documentosInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${documentosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
