
<%@ page import="tfcmanager.TFC" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'TFC.label', default: 'TFC')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-TFC" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-TFC" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="TFC.banca.label" default="Banca" /></th>
					
						<th><g:message code="TFC.disciplina.label" default="Disciplina" /></th>
					
						<th><g:message code="TFC.horariosemanal.label" default="Horariosemanal" /></th>
					
						<g:sortableColumn property="observacao" title="${message(code: 'TFC.observacao.label', default: 'Observacao')}" />
					
						<th><g:message code="TFC.projetoorientacao.label" default="Projetoorientacao" /></th>
					
						<g:sortableColumn property="semestre" title="${message(code: 'TFC.semestre.label', default: 'Semestre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${TFCInstanceList}" status="i" var="TFCInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${TFCInstance.id}">${fieldValue(bean: TFCInstance, field: "banca")}</g:link></td>
					
						<td>${fieldValue(bean: TFCInstance, field: "disciplina")}</td>
					
						<td>${fieldValue(bean: TFCInstance, field: "horariosemanal")}</td>
					
						<td>${fieldValue(bean: TFCInstance, field: "observacao")}</td>
					
						<td>${fieldValue(bean: TFCInstance, field: "projetoorientacao")}</td>
					
						<td>${fieldValue(bean: TFCInstance, field: "semestre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${TFCInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
