
<%@ page import="tfcmanager.AvaliacaoTFC" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avaliacaoTFC.label', default: 'AvaliacaoTFC')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-avaliacaoTFC" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-avaliacaoTFC" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="notafinal" title="${message(code: 'avaliacaoTFC.notafinal.label', default: 'Notafinal')}" />
					
						<g:sortableColumn property="coordenador" title="${message(code: 'avaliacaoTFC.coordenador.label', default: 'Coordenador')}" />
					
						<g:sortableColumn property="orientador" title="${message(code: 'avaliacaoTFC.orientador.label', default: 'Orientador')}" />
					
						<g:sortableColumn property="banca" title="${message(code: 'avaliacaoTFC.banca.label', default: 'Banca')}" />
					
						<g:sortableColumn property="preprojetoTFCI" title="${message(code: 'avaliacaoTFC.preprojetoTFCI.label', default: 'Preprojeto TFCI')}" />
					
						<th><g:message code="avaliacaoTFC.aluno.label" default="Aluno" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${avaliacaoTFCInstanceList}" status="i" var="avaliacaoTFCInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${avaliacaoTFCInstance.id}">${fieldValue(bean: avaliacaoTFCInstance, field: "notafinal")}</g:link></td>
					
						<td>${fieldValue(bean: avaliacaoTFCInstance, field: "coordenador")}</td>
					
						<td>${fieldValue(bean: avaliacaoTFCInstance, field: "orientador")}</td>
					
						<td>${fieldValue(bean: avaliacaoTFCInstance, field: "banca")}</td>
					
						<td>${fieldValue(bean: avaliacaoTFCInstance, field: "preprojetoTFCI")}</td>
					
						<td>${fieldValue(bean: avaliacaoTFCInstance, field: "aluno")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${avaliacaoTFCInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
