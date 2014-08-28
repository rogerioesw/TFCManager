
<%@ page import="tfcmanager.ProjetoOrientacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projetoOrientacao.label', default: 'ProjetoOrientacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-projetoOrientacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-projetoOrientacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tema" title="${message(code: 'projetoOrientacao.tema.label', default: 'Tema')}" />
					
						<g:sortableColumn property="situacao" title="${message(code: 'projetoOrientacao.situacao.label', default: 'Situacao')}" />
					
						<g:sortableColumn property="observacao" title="${message(code: 'projetoOrientacao.observacao.label', default: 'Observacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projetoOrientacaoInstanceList}" status="i" var="projetoOrientacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projetoOrientacaoInstance.id}">${fieldValue(bean: projetoOrientacaoInstance, field: "tema")}</g:link></td>
					
						<td>${fieldValue(bean: projetoOrientacaoInstance, field: "situacao")}</td>
					
						<td>${fieldValue(bean: projetoOrientacaoInstance, field: "observacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projetoOrientacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
