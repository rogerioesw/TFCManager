
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
		
		<g:form action="filter" controller="TFC" method="post">
			<label for="titulo">Pesquisa por projeto:</label>
            <g:textField name="pesquisa" id="pesquisa" value="" style="width: 250px;"/>
            <g:submitButton name="btnpesquisa" value="Pesquisar" />
		</g:form>
		
		<div id="list-TFC" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="semestre" title="${message(code: 'TFC.semestre.label', default: 'Semestre')}" />
					
						<g:sortableColumn property="situacao" title="${message(code: 'TFC.situacao.label', default: 'Situacao')}" />
					
						<g:sortableColumn property="projeto" title="${message(code: 'TFC.projeto.label', default: 'Projeto')}" />
					
						<th><g:message code="TFC.disciplina.label" default="Disciplina" /></th>
					
						<th><g:message code="TFC.formula.label" default="Formula" /></th>
					
						<th><g:message code="TFC.horario.label" default="Horario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${TFCInstanceList}" status="i" var="TFCInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${TFCInstance.id}">${fieldValue(bean: TFCInstance, field: "semestre")}</g:link></td>
					
						<td>${fieldValue(bean: TFCInstance, field: "situacao")}</td>
					
						<td>${fieldValue(bean: TFCInstance, field: "projeto")}</td>
					
						<td>${fieldValue(bean: TFCInstance, field: "disciplina")}</td>
					
						<td>${fieldValue(bean: TFCInstance, field: "formula")}</td>
					
						<td>${fieldValue(bean: TFCInstance, field: "horario")}</td>
					
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
