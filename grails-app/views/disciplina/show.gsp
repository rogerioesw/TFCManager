
<%@ page import="tfcmanager.Disciplina" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'disciplina.label', default: 'Disciplina')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-disciplina" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-disciplina" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list disciplina">
			
				<g:if test="${disciplinaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="disciplina.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${disciplinaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${disciplinaInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="disciplina.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${disciplinaInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${disciplinaInstance?.formula}">
				<li class="fieldcontain">
					<span id="formula-label" class="property-label"><g:message code="disciplina.formula.label" default="Formula" /></span>
					
						<g:each in="${disciplinaInstance.formula}" var="f">
						<span class="property-value" aria-labelledby="formula-label"><g:link controller="formula" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${disciplinaInstance?.tfc}">
				<li class="fieldcontain">
					<span id="tfc-label" class="property-label"><g:message code="disciplina.tfc.label" default="Tfc" /></span>
					
						<g:each in="${disciplinaInstance.tfc}" var="t">
						<span class="property-value" aria-labelledby="tfc-label"><g:link controller="TFC" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:disciplinaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${disciplinaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
