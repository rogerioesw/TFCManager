
<%@ page import="tfcmanager.PesoAvaliacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pesoAvaliacao.label', default: 'PesoAvaliacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pesoAvaliacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pesoAvaliacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'pesoAvaliacao.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="percentual" title="${message(code: 'pesoAvaliacao.percentual.label', default: 'Percentual')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pesoAvaliacaoInstanceList}" status="i" var="pesoAvaliacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pesoAvaliacaoInstance.id}">${fieldValue(bean: pesoAvaliacaoInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: pesoAvaliacaoInstance, field: "percentual")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pesoAvaliacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
