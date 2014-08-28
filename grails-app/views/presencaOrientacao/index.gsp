
<%@ page import="tfcmanager.PresencaOrientacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'presencaOrientacao.label', default: 'PresencaOrientacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-presencaOrientacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-presencaOrientacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="data" title="${message(code: 'presencaOrientacao.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="observacao" title="${message(code: 'presencaOrientacao.observacao.label', default: 'Observacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${presencaOrientacaoInstanceList}" status="i" var="presencaOrientacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${presencaOrientacaoInstance.id}">${fieldValue(bean: presencaOrientacaoInstance, field: "data")}</g:link></td>
					
						<td>${fieldValue(bean: presencaOrientacaoInstance, field: "observacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${presencaOrientacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
