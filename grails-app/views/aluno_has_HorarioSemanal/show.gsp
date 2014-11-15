
<%@ page import="tfcmanager.Aluno_has_HorarioSemanal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno_has_HorarioSemanal.label', default: 'Horários Disponíveis para Aluno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aluno_has_HorarioSemanal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aluno_has_HorarioSemanal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aluno_has_HorarioSemanal">
			
				<g:if test="${aluno_has_HorarioSemanalInstance?.semestre}">
				<li class="fieldcontain">
					<span id="semestre-label" class="property-label"><g:message code="aluno_has_HorarioSemanal.semestre.label" default="Semestre" /></span>
					
						<span class="property-value" aria-labelledby="semestre-label"><g:fieldValue bean="${aluno_has_HorarioSemanalInstance}" field="semestre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aluno_has_HorarioSemanalInstance?.aluno}">
				<li class="fieldcontain">
					<span id="aluno-label" class="property-label"><g:message code="aluno_has_HorarioSemanal.aluno.label" default="Aluno" /></span>
					
						<span class="property-value" aria-labelledby="aluno-label"><g:link controller="aluno" action="show" id="${aluno_has_HorarioSemanalInstance?.aluno?.id}">${aluno_has_HorarioSemanalInstance?.aluno?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${aluno_has_HorarioSemanalInstance?.horario}">
				<li class="fieldcontain">
					<span id="horario-label" class="property-label"><g:message code="aluno_has_HorarioSemanal.horario.label" default="Horario" /></span>
					
						<span class="property-value" aria-labelledby="horario-label"><g:link controller="horarioSemanal" action="show" id="${aluno_has_HorarioSemanalInstance?.horario?.id}">${aluno_has_HorarioSemanalInstance?.horario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:aluno_has_HorarioSemanalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${aluno_has_HorarioSemanalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
