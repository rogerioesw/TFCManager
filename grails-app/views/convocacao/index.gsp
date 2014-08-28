
<%@ page import="tfcmanager.Convocacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'convocacao.label', default: 'Convocacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-convocacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-convocacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="ano" title="${message(code: 'convocacao.ano.label', default: 'Ano')}" />
					
						<g:sortableColumn property="assunto" title="${message(code: 'convocacao.assunto.label', default: 'Assunto')}" />
					
						<g:sortableColumn property="mensagem" title="${message(code: 'convocacao.mensagem.label', default: 'Mensagem')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'convocacao.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="numero" title="${message(code: 'convocacao.numero.label', default: 'Numero')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${convocacaoInstanceList}" status="i" var="convocacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${convocacaoInstance.id}">${fieldValue(bean: convocacaoInstance, field: "ano")}</g:link></td>
					
						<td>${fieldValue(bean: convocacaoInstance, field: "assunto")}</td>
					
						<td>${fieldValue(bean: convocacaoInstance, field: "mensagem")}</td>
					
						<td><g:formatDate date="${convocacaoInstance.data}" /></td>
					
						<td>${fieldValue(bean: convocacaoInstance, field: "numero")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${convocacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
