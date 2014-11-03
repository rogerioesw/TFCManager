
<%@ page import="tfcmanager.Documentos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'documentos.label', default: 'Documentos')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-documentos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-documentos" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'documentos.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="documentos.arquivo.label" default="Arquivo" /></th>
					
						<th><g:message code="documentos.tfc.label" default="Tfc" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${documentosInstanceList}" status="i" var="documentosInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${documentosInstance.id}">${fieldValue(bean: documentosInstance, field: "descricao")}</g:link></td>
					
						<td><fileuploader:download 	id="${documentosInstance.id}"
													errorAction="index"
													errorController="docs">${fieldValue(bean: documentosInstance, field: "arquivo")}</fileuploader:download></td>
					
						<td>${fieldValue(bean: documentosInstance, field: "tfc")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${documentosInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
