
<%@ page import="tfcmanager.ProjetoOrientacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projetoOrientacao.label', default: 'ProjetoOrientacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-projetoOrientacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-projetoOrientacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list projetoOrientacao">
			
				<g:if test="${projetoOrientacaoInstance?.tema}">
				<li class="fieldcontain">
					<span id="tema-label" class="property-label"><g:message code="projetoOrientacao.tema.label" default="Tema" /></span>
					
						<span class="property-value" aria-labelledby="tema-label"><g:fieldValue bean="${projetoOrientacaoInstance}" field="tema"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projetoOrientacaoInstance?.situacao}">
				<li class="fieldcontain">
					<span id="situacao-label" class="property-label"><g:message code="projetoOrientacao.situacao.label" default="Situacao" /></span>
					
						<span class="property-value" aria-labelledby="situacao-label"><g:fieldValue bean="${projetoOrientacaoInstance}" field="situacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projetoOrientacaoInstance?.observacao}">
				<li class="fieldcontain">
					<span id="observacao-label" class="property-label"><g:message code="projetoOrientacao.observacao.label" default="Observacao" /></span>
					
						<span class="property-value" aria-labelledby="observacao-label"><g:fieldValue bean="${projetoOrientacaoInstance}" field="observacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projetoOrientacaoInstance?.documentos}">
				<li class="fieldcontain">
					<span id="documentos-label" class="property-label"><g:message code="projetoOrientacao.documentos.label" default="Documentos" /></span>
					
						<g:each in="${projetoOrientacaoInstance.documentos}" var="d">
						<span class="property-value" aria-labelledby="documentos-label"><g:link controller="documentos" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${projetoOrientacaoInstance?.tfc}">
				<li class="fieldcontain">
					<span id="tfc-label" class="property-label"><g:message code="projetoOrientacao.tfc.label" default="Tfc" /></span>
					
						<g:each in="${projetoOrientacaoInstance.tfc}" var="t">
						<span class="property-value" aria-labelledby="tfc-label"><g:link controller="TFC" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${projetoOrientacaoInstance?.usuarios}">
				<li class="fieldcontain">
					<span id="usuarios-label" class="property-label"><g:message code="projetoOrientacao.usuarios.label" default="Usuarios" /></span>
					
						<g:each in="${projetoOrientacaoInstance.usuarios}" var="u">
						<span class="property-value" aria-labelledby="usuarios-label"><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:projetoOrientacaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${projetoOrientacaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
