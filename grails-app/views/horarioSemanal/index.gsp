
<%@ page import="tfcmanager.HorarioSemanal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'horarioSemanal.label', default: 'Horario Semanal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-horarioSemanal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-horarioSemanal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="diasemana" title="${message(code: 'horarioSemanal.diasemana.label', default: 'Dia da semana')}" />
					
						<g:sortableColumn property="horario" title="${message(code: 'horarioSemanal.horario.label', default: 'Horario')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${horarioSemanalInstanceList}" status="i" var="horarioSemanalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${horarioSemanalInstance.id}">${fieldValue(bean: horarioSemanalInstance, field: "diasemana")}</g:link></td>
					
						<td>${fieldValue(bean: horarioSemanalInstance, field: "horario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${horarioSemanalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
