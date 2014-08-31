
<%@ page import="tfcmanager.Seminario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'seminario.label', default: 'Seminario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-seminario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-seminario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'seminario.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'seminario.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="horario" title="${message(code: 'seminario.horario.label', default: 'Horario')}" />
					
						<g:sortableColumn property="observacao" title="${message(code: 'seminario.observacao.label', default: 'Observacao')}" />
					
						<th><g:message code="seminario.tfc.label" default="Tfc" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${seminarioInstanceList}" status="i" var="seminarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${seminarioInstance.id}">${fieldValue(bean: seminarioInstance, field: "descricao")}</g:link></td>
					
						<td><g:formatDate date="${seminarioInstance.data}" /></td>
					
						<td>${fieldValue(bean: seminarioInstance, field: "horario")}</td>
					
						<td>${fieldValue(bean: seminarioInstance, field: "observacao")}</td>
					
						<td>${fieldValue(bean: seminarioInstance, field: "tfc")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${seminarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
