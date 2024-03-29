
<%@ page import="tfcmanager.Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aluno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		
		<g:form action="filter" controller="aluno" method="post">
			<label for="titulo">Pesquisa por nome:</label>
            <g:textField name="pesquisa" id="pesquisa" value="" style="width: 250px;"/>
            <g:submitButton name="btnpesquisa" value="Pesquisar" />
		</g:form>
		
		<div id="list-aluno" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'aluno.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'aluno.email.label', default: 'Email')}" />
					
						<th><g:message code="aluno.faculdade.label" default="Faculdade" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alunoInstanceList}" status="i" var="alunoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alunoInstance.id}">${fieldValue(bean: alunoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: alunoInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: alunoInstance, field: "faculdade")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alunoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
