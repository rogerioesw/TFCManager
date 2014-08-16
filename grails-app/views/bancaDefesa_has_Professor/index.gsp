
<%@ page import="tfcmanager.BancaDefesa_has_Professor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bancaDefesa_has_Professor.label', default: 'BancaDefesa_has_Professor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-bancaDefesa_has_Professor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-bancaDefesa_has_Professor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="bancaDefesa_has_Professor.banca.label" default="Banca" /></th>
					
						<g:sortableColumn property="nota" title="${message(code: 'bancaDefesa_has_Professor.nota.label', default: 'Nota')}" />
					
						<g:sortableColumn property="observacao" title="${message(code: 'bancaDefesa_has_Professor.observacao.label', default: 'Observacao')}" />
					
						<th><g:message code="bancaDefesa_has_Professor.professor.label" default="Professor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bancaDefesa_has_ProfessorInstanceList}" status="i" var="bancaDefesa_has_ProfessorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bancaDefesa_has_ProfessorInstance.id}">${fieldValue(bean: bancaDefesa_has_ProfessorInstance, field: "banca")}</g:link></td>
					
						<td>${fieldValue(bean: bancaDefesa_has_ProfessorInstance, field: "nota")}</td>
					
						<td>${fieldValue(bean: bancaDefesa_has_ProfessorInstance, field: "observacao")}</td>
					
						<td>${fieldValue(bean: bancaDefesa_has_ProfessorInstance, field: "professor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bancaDefesa_has_ProfessorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
