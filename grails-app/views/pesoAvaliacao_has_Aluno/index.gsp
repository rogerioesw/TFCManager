
<%@ page import="tfcmanager.PesoAvaliacao_has_Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pesoAvaliacao_has_Aluno.label', default: 'PesoAvaliacao_has_Aluno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pesoAvaliacao_has_Aluno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pesoAvaliacao_has_Aluno" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nota" title="${message(code: 'pesoAvaliacao_has_Aluno.nota.label', default: 'Nota')}" />
					
						<th><g:message code="pesoAvaliacao_has_Aluno.peso.label" default="Peso" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pesoAvaliacao_has_AlunoInstanceList}" status="i" var="pesoAvaliacao_has_AlunoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pesoAvaliacao_has_AlunoInstance.id}">${fieldValue(bean: pesoAvaliacao_has_AlunoInstance, field: "nota")}</g:link></td>
					
						<td>${fieldValue(bean: pesoAvaliacao_has_AlunoInstance, field: "peso")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pesoAvaliacao_has_AlunoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
