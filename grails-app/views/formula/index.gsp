
<%@ page import="tfcmanager.Formula" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formula.label', default: 'Formula')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formula" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formula" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="coordenador" title="${message(code: 'formula.coordenador.label', default: 'Coordenador')}" />
					
						<g:sortableColumn property="orientador" title="${message(code: 'formula.orientador.label', default: 'Orientador')}" />
					
						<g:sortableColumn property="banca" title="${message(code: 'formula.banca.label', default: 'Banca')}" />
					
						<g:sortableColumn property="preprojetoTFCI" title="${message(code: 'formula.preprojetoTFCI.label', default: 'Preprojeto TFCI')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'formula.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="formula.disciplina.label" default="Disciplina" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formulaInstanceList}" status="i" var="formulaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formulaInstance.id}">${fieldValue(bean: formulaInstance, field: "coordenador")}</g:link></td>
					
						<td>${fieldValue(bean: formulaInstance, field: "orientador")}</td>
					
						<td>${fieldValue(bean: formulaInstance, field: "banca")}</td>
					
						<td>${fieldValue(bean: formulaInstance, field: "preprojetoTFCI")}</td>
					
						<td>${fieldValue(bean: formulaInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: formulaInstance, field: "disciplina")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formulaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
