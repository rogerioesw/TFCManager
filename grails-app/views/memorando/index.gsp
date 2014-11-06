
<%@ page import="tfcmanager.Memorando" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'memorando.label', default: 'Memorando')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-memorando" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-memorando" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="ano" title="${message(code: 'memorando.ano.label', default: 'Ano')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'memorando.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="assunto" title="${message(code: 'memorando.assunto.label', default: 'Assunto')}" />
					
						<g:sortableColumn property="mensagem" title="${message(code: 'memorando.mensagem.label', default: 'Mensagem')}" />
					
						<g:sortableColumn property="numero" title="${message(code: 'memorando.numero.label', default: 'Numero')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${memorandoInstanceList}" status="i" var="memorandoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${memorandoInstance.id}">${fieldValue(bean: memorandoInstance, field: "ano")}</g:link></td>
					
						<td><g:formatDate date="${memorandoInstance.data}" /></td>
					
						<td>${fieldValue(bean: memorandoInstance, field: "assunto")}</td>
					
						<td>${fieldValue(bean: memorandoInstance, field: "mensagem")}</td>
					
						<td>${fieldValue(bean: memorandoInstance, field: "numero")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${memorandoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
