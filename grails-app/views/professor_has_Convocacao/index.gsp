
<%@ page import="tfcmanager.Professor_has_Convocacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'professor_has_Convocacao.label', default: 'Professor_has_Convocacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-professor_has_Convocacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-professor_has_Convocacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="professor_has_Convocacao.convocacao.label" default="Convocacao" /></th>
					
						<th><g:message code="professor_has_Convocacao.professor.label" default="Professor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${professor_has_ConvocacaoInstanceList}" status="i" var="professor_has_ConvocacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${professor_has_ConvocacaoInstance.id}">${fieldValue(bean: professor_has_ConvocacaoInstance, field: "convocacao")}</g:link></td>
					
						<td>${fieldValue(bean: professor_has_ConvocacaoInstance, field: "professor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${professor_has_ConvocacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
