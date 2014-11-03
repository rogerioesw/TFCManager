
<%@ page import="tfcmanager.BancaDefesa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bancaDefesa.label', default: 'BancaDefesa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bancaDefesa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bancaDefesa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bancaDefesa">
			
				<g:if test="${bancaDefesaInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="bancaDefesa.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${bancaDefesaInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bancaDefesaInstance?.horario}">
				<li class="fieldcontain">
					<span id="horario-label" class="property-label"><g:message code="bancaDefesa.horario.label" default="Horario" /></span>
					
						<span class="property-value" aria-labelledby="horario-label"><g:fieldValue bean="${bancaDefesaInstance}" field="horario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bancaDefesaInstance?.observacao}">
				<li class="fieldcontain">
					<span id="observacao-label" class="property-label"><g:message code="bancaDefesa.observacao.label" default="Observacao" /></span>
					
						<span class="property-value" aria-labelledby="observacao-label"><g:fieldValue bean="${bancaDefesaInstance}" field="observacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bancaDefesaInstance?.professor}">
				<li class="fieldcontain">
					<span id="professor-label" class="property-label"><g:message code="bancaDefesa.professor.label" default="Professor" /></span>
					
						<g:each in="${bancaDefesaInstance.professor}" var="p">
						<span class="property-value" aria-labelledby="professor-label"><g:link controller="professor" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${bancaDefesaInstance?.tfc}">
				<li class="fieldcontain">
					<span id="tfc-label" class="property-label"><g:message code="bancaDefesa.tfc.label" default="Tfc" /></span>
					
						<span class="property-value" aria-labelledby="tfc-label"><g:link controller="TFC" action="show" id="${bancaDefesaInstance?.tfc?.id}">${bancaDefesaInstance?.tfc?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bancaDefesaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bancaDefesaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
