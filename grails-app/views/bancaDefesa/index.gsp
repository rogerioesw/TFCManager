
<%@ page import="tfcmanager.BancaDefesa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bancaDefesa.label', default: 'BancaDefesa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-bancaDefesa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-bancaDefesa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="data" title="${message(code: 'bancaDefesa.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="horario" title="${message(code: 'bancaDefesa.horario.label', default: 'Horario')}" />
					
						<g:sortableColumn property="observacao" title="${message(code: 'bancaDefesa.observacao.label', default: 'Observacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bancaDefesaInstanceList}" status="i" var="bancaDefesaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bancaDefesaInstance.id}">${fieldValue(bean: bancaDefesaInstance, field: "data")}</g:link></td>
					
						<td><g:formatDate date="${bancaDefesaInstance.horario}" /></td>
					
						<td>${fieldValue(bean: bancaDefesaInstance, field: "observacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bancaDefesaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
