
<%@ page import="tfcmanager.Aluno_has_HorarioSemanal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno_has_HorarioSemanal.label', default: 'Aluno_has_HorarioSemanal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aluno_has_HorarioSemanal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aluno_has_HorarioSemanal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="semestre" title="${message(code: 'aluno_has_HorarioSemanal.semestre.label', default: 'Semestre')}" />
					
						<th><g:message code="aluno_has_HorarioSemanal.aluno.label" default="Aluno" /></th>
					
						<th><g:message code="aluno_has_HorarioSemanal.horario.label" default="Horario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${aluno_has_HorarioSemanalInstanceList}" status="i" var="aluno_has_HorarioSemanalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aluno_has_HorarioSemanalInstance.id}">${fieldValue(bean: aluno_has_HorarioSemanalInstance, field: "semestre")}</g:link></td>
					
						<td>${fieldValue(bean: aluno_has_HorarioSemanalInstance, field: "aluno")}</td>
					
						<td>${fieldValue(bean: aluno_has_HorarioSemanalInstance, field: "horario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aluno_has_HorarioSemanalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
