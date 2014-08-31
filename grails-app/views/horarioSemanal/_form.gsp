<%@ page import="tfcmanager.HorarioSemanal" %>



<div class="fieldcontain ${hasErrors(bean: horarioSemanalInstance, field: 'diasemana', 'error')} required">
	<label for="diasemana">
		<g:message code="horarioSemanal.diasemana.label" default="Diasemana" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="diasemana" maxlength="14" required="" value="${horarioSemanalInstance?.diasemana}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: horarioSemanalInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="horarioSemanal.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="horario" pattern="${horarioSemanalInstance.constraints.horario.matches}" required="" value="${horarioSemanalInstance?.horario}"/>

</div>
