<%@ page import="tfcmanager.Professor_has_HorarioSemanal" %>



<div class="fieldcontain ${hasErrors(bean: professor_has_HorarioSemanalInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="professor_has_HorarioSemanal.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="horario" name="horario.id" from="${tfcmanager.HorarioSemanal.list()}" optionKey="id" required="" value="${professor_has_HorarioSemanalInstance?.horario?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: professor_has_HorarioSemanalInstance, field: 'professor', 'error')} required">
	<label for="professor">
		<g:message code="professor_has_HorarioSemanal.professor.label" default="Professor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="professor" name="professor.id" from="${tfcmanager.Professor.list()}" optionKey="id" required="" value="${professor_has_HorarioSemanalInstance?.professor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: professor_has_HorarioSemanalInstance, field: 'semestre', 'error')} required">
	<label for="semestre">
		<g:message code="professor_has_HorarioSemanal.semestre.label" default="Semestre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="semestre" required="" value="${professor_has_HorarioSemanalInstance?.semestre}"/>

</div>

