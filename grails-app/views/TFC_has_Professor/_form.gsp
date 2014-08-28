<%@ page import="tfcmanager.TFC_has_Professor" %>



<div class="fieldcontain ${hasErrors(bean: TFC_has_ProfessorInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="TFC_has_Professor.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${TFC_has_ProfessorInstance?.tipo}"/>

</div>

