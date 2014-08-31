<%@ page import="tfcmanager.Faculdade" %>


<div class="fieldcontain ${hasErrors(bean: faculdadeInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="faculdade.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${faculdadeInstance?.nome}"/>

</div>

