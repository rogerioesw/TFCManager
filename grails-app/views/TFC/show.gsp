
<%@ page import="tfcmanager.TFC" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'TFC.label', default: 'TFC')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-TFC" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-TFC" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list TFC">
			
				<g:if test="${TFCInstance?.banca}">
				<li class="fieldcontain">
					<span id="banca-label" class="property-label"><g:message code="TFC.banca.label" default="Banca" /></span>
					
						<span class="property-value" aria-labelledby="banca-label"><g:link controller="bancaDefesa" action="show" id="${TFCInstance?.banca?.id}">${TFCInstance?.banca?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${TFCInstance?.disciplina}">
				<li class="fieldcontain">
					<span id="disciplina-label" class="property-label"><g:message code="TFC.disciplina.label" default="Disciplina" /></span>
					
						<span class="property-value" aria-labelledby="disciplina-label"><g:link controller="disciplina" action="show" id="${TFCInstance?.disciplina?.id}">${TFCInstance?.disciplina?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${TFCInstance?.horariosemanal}">
				<li class="fieldcontain">
					<span id="horariosemanal-label" class="property-label"><g:message code="TFC.horariosemanal.label" default="Horariosemanal" /></span>
					
						<span class="property-value" aria-labelledby="horariosemanal-label"><g:link controller="horarioSemanal" action="show" id="${TFCInstance?.horariosemanal?.id}">${TFCInstance?.horariosemanal?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${TFCInstance?.observacao}">
				<li class="fieldcontain">
					<span id="observacao-label" class="property-label"><g:message code="TFC.observacao.label" default="Observacao" /></span>
					
						<span class="property-value" aria-labelledby="observacao-label"><g:fieldValue bean="${TFCInstance}" field="observacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${TFCInstance?.pesohasTFC}">
				<li class="fieldcontain">
					<span id="pesohasTFC-label" class="property-label"><g:message code="TFC.pesohasTFC.label" default="Pesohas TFC" /></span>
					
						<g:each in="${TFCInstance.pesohasTFC}" var="p">
						<span class="property-value" aria-labelledby="pesohasTFC-label"><g:link controller="pesoAvaliacao_has_TFC" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${TFCInstance?.presenca}">
				<li class="fieldcontain">
					<span id="presenca-label" class="property-label"><g:message code="TFC.presenca.label" default="Presenca" /></span>
					
						<g:each in="${TFCInstance.presenca}" var="p">
						<span class="property-value" aria-labelledby="presenca-label"><g:link controller="presencaOrientacao" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${TFCInstance?.projetoorientacao}">
				<li class="fieldcontain">
					<span id="projetoorientacao-label" class="property-label"><g:message code="TFC.projetoorientacao.label" default="Projetoorientacao" /></span>
					
						<span class="property-value" aria-labelledby="projetoorientacao-label"><g:link controller="projetoOrientacao" action="show" id="${TFCInstance?.projetoorientacao?.id}">${TFCInstance?.projetoorientacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${TFCInstance?.semestre}">
				<li class="fieldcontain">
					<span id="semestre-label" class="property-label"><g:message code="TFC.semestre.label" default="Semestre" /></span>
					
						<span class="property-value" aria-labelledby="semestre-label"><g:fieldValue bean="${TFCInstance}" field="semestre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${TFCInstance?.seminario}">
				<li class="fieldcontain">
					<span id="seminario-label" class="property-label"><g:message code="TFC.seminario.label" default="Seminario" /></span>
					
						<g:each in="${TFCInstance.seminario}" var="s">
						<span class="property-value" aria-labelledby="seminario-label"><g:link controller="seminario" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${TFCInstance?.situacao}">
				<li class="fieldcontain">
					<span id="situacao-label" class="property-label"><g:message code="TFC.situacao.label" default="Situacao" /></span>
					
						<span class="property-value" aria-labelledby="situacao-label"><g:fieldValue bean="${TFCInstance}" field="situacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${TFCInstance?.tfchasProfessor}">
				<li class="fieldcontain">
					<span id="tfchasProfessor-label" class="property-label"><g:message code="TFC.tfchasProfessor.label" default="Tfchas Professor" /></span>
					
						<g:each in="${TFCInstance.tfchasProfessor}" var="t">
						<span class="property-value" aria-labelledby="tfchasProfessor-label"><g:link controller="TFC_has_Professor" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:TFCInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${TFCInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
