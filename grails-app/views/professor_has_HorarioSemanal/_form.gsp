<%@ page import="tfcmanager.Professor_has_HorarioSemanal" %>



<div class="fieldcontain ${hasErrors(bean: professor_has_HorarioSemanalInstance, field: 'semestre', 'error')} required">
	<label for="semestre">
		<g:message code="professor_has_HorarioSemanal.semestre.label" default="Semestre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="semestre" required="" value="${professor_has_HorarioSemanalInstance?.semestre}"/>

</div>

