
<%@ page import="tfcmanager.Professor_has_HorarioSemanal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'professor_has_HorarioSemanal.label', default: 'Professor_has_HorarioSemanal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-professor_has_HorarioSemanal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-professor_has_HorarioSemanal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="semestre" title="${message(code: 'professor_has_HorarioSemanal.semestre.label', default: 'Semestre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${professor_has_HorarioSemanalInstanceList}" status="i" var="professor_has_HorarioSemanalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${professor_has_HorarioSemanalInstance.id}">${fieldValue(bean: professor_has_HorarioSemanalInstance, field: "semestre")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${professor_has_HorarioSemanalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
