
<%@ page import="tfcmanager.PesoAvaliacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pesoAvaliacao.label', default: 'PesoAvaliacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pesoAvaliacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pesoAvaliacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pesoAvaliacao">
			
				<g:if test="${pesoAvaliacaoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="pesoAvaliacao.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${pesoAvaliacaoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pesoAvaliacaoInstance?.percentual}">
				<li class="fieldcontain">
					<span id="percentual-label" class="property-label"><g:message code="pesoAvaliacao.percentual.label" default="Percentual" /></span>
					
						<span class="property-value" aria-labelledby="percentual-label"><g:fieldValue bean="${pesoAvaliacaoInstance}" field="percentual"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pesoAvaliacaoInstance?.pesohasTFC}">
				<li class="fieldcontain">
					<span id="pesohasTFC-label" class="property-label"><g:message code="pesoAvaliacao.pesohasTFC.label" default="Pesohas TFC" /></span>
					
						<g:each in="${pesoAvaliacaoInstance.pesohasTFC}" var="p">
						<span class="property-value" aria-labelledby="pesohasTFC-label"><g:link controller="pesoAvaliacao_has_TFC" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pesoAvaliacaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pesoAvaliacaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
