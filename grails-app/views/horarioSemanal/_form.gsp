<%@ page import="tfcmanager.HorarioSemanal" %>



<div class="fieldcontain ${hasErrors(bean: horarioSemanalInstance, field: 'diasemana', 'error')} required">
	<label for="diasemana">
		<g:message code="horarioSemanal.diasemana.label" default="Diasemana" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="diasemana" required="" value="${horarioSemanalInstance?.diasemana}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: horarioSemanalInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="horarioSemanal.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="horario" precision="day"  value="${horarioSemanalInstance?.horario}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: horarioSemanalInstance, field: 'professor', 'error')} ">
	<label for="professor">
		<g:message code="horarioSemanal.professor.label" default="Professor" />
		
	</label>
	

</div>

