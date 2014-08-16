
<%@ page import="tfcmanager.Professor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'professor.label', default: 'Professor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-professor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-professor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list professor">
			
				<g:if test="${professorInstance?.bancahasProfessor}">
				<li class="fieldcontain">
					<span id="bancahasProfessor-label" class="property-label"><g:message code="professor.bancahasProfessor.label" default="Bancahas Professor" /></span>
					
						<g:each in="${professorInstance.bancahasProfessor}" var="b">
						<span class="property-value" aria-labelledby="bancahasProfessor-label"><g:link controller="bancaDefesa_has_Professor" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="professor.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${professorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="professor.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${professorInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.professorhasHorario}">
				<li class="fieldcontain">
					<span id="professorhasHorario-label" class="property-label"><g:message code="professor.professorhasHorario.label" default="Professorhas Horario" /></span>
					
						<g:each in="${professorInstance.professorhasHorario}" var="p">
						<span class="property-value" aria-labelledby="professorhasHorario-label"><g:link controller="professor_has_HorarioSemanal" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.tfchasProfessor}">
				<li class="fieldcontain">
					<span id="tfchasProfessor-label" class="property-label"><g:message code="professor.tfchasProfessor.label" default="Tfchas Professor" /></span>
					
						<g:each in="${professorInstance.tfchasProfessor}" var="t">
						<span class="property-value" aria-labelledby="tfchasProfessor-label"><g:link controller="TFC_has_Professor" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:professorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${professorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
