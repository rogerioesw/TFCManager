
<%@ page import="tfcmanager.AvaliacaoTFC" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avaliacaoTFC.label', default: 'Avaliação TFC')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-avaliacaoTFC" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-avaliacaoTFC" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list avaliacaoTFC">
			
				<g:if test="${avaliacaoTFCInstance?.aluno}">
				<li class="fieldcontain">
					<span id="aluno-label" class="property-label"><g:message code="avaliacaoTFC.aluno.label" default="Aluno" /></span>
					
						<span class="property-value" aria-labelledby="aluno-label"><g:link controller="aluno" action="show" id="${avaliacaoTFCInstance?.aluno?.id}">${avaliacaoTFCInstance?.aluno?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoTFCInstance?.tfc}">
				<li class="fieldcontain">
					<span id="tfc-label" class="property-label"><g:message code="avaliacaoTFC.tfc.label" default="Tfc" /></span>
					
						<span class="property-value" aria-labelledby="tfc-label"><g:link controller="TFC" action="show" id="${avaliacaoTFCInstance?.tfc?.id}">${avaliacaoTFCInstance?.tfc?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
				
				<g:if test="${avaliacaoTFCInstance?.preprojetoTFCI}">
				<li class="fieldcontain">
					<span id="preprojetoTFCI-label" class="property-label"><g:message code="avaliacaoTFC.preprojetoTFCI.label" default="Pré-projeto ou TFCI" /></span>
					
						<span class="property-value" aria-labelledby="preprojetoTFCI-label"><g:fieldValue bean="${avaliacaoTFCInstance}" field="preprojetoTFCI"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoTFCInstance?.orientador}">
				<li class="fieldcontain">
					<span id="orientador-label" class="property-label"><g:message code="avaliacaoTFC.orientador.label" default="Orientador" /></span>
					
						<span class="property-value" aria-labelledby="orientador-label"><g:fieldValue bean="${avaliacaoTFCInstance}" field="orientador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoTFCInstance?.coordenador}">
				<li class="fieldcontain">
					<span id="coordenador-label" class="property-label"><g:message code="avaliacaoTFC.coordenador.label" default="Coordenador" /></span>
					
						<span class="property-value" aria-labelledby="coordenador-label"><g:fieldValue bean="${avaliacaoTFCInstance}" field="coordenador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoTFCInstance?.banca}">
				<li class="fieldcontain">
					<span id="banca-label" class="property-label"><g:message code="avaliacaoTFC.banca.label" default="Banca" /></span>
					
						<span class="property-value" aria-labelledby="banca-label"><g:fieldValue bean="${avaliacaoTFCInstance}" field="banca"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoTFCInstance?.notafinal}">
				<li class="fieldcontain">
					<span id="notafinal-label" class="property-label"><g:message code="avaliacaoTFC.notafinal.label" default="Nota Final" /></span>
					
						<span class="property-value" aria-labelledby="notafinal-label"><g:fieldValue bean="${avaliacaoTFCInstance}" field="notafinal"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:avaliacaoTFCInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${avaliacaoTFCInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
