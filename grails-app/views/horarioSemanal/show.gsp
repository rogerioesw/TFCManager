
<%@ page import="tfcmanager.HorarioSemanal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'horarioSemanal.label', default: 'HorarioSemanal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-horarioSemanal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-horarioSemanal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list horarioSemanal">
			
				<g:if test="${horarioSemanalInstance?.diasemana}">
				<li class="fieldcontain">
					<span id="diasemana-label" class="property-label"><g:message code="horarioSemanal.diasemana.label" default="Diasemana" /></span>
					
						<span class="property-value" aria-labelledby="diasemana-label"><g:fieldValue bean="${horarioSemanalInstance}" field="diasemana"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${horarioSemanalInstance?.horario}">
				<li class="fieldcontain">
					<span id="horario-label" class="property-label"><g:message code="horarioSemanal.horario.label" default="Horario" /></span>
					
						<span class="property-value" aria-labelledby="horario-label"><g:formatDate date="${horarioSemanalInstance?.horario}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${horarioSemanalInstance?.professor}">
				<li class="fieldcontain">
					<span id="professor-label" class="property-label"><g:message code="horarioSemanal.professor.label" default="Professor" /></span>
					
						<g:each in="${horarioSemanalInstance.professor}" var="p">
						<span class="property-value" aria-labelledby="professor-label"><g:link controller="professor" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:horarioSemanalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${horarioSemanalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
