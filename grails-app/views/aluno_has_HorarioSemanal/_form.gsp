<%@ page import="tfcmanager.Aluno_has_HorarioSemanal" %>



<div class="fieldcontain ${hasErrors(bean: aluno_has_HorarioSemanalInstance, field: 'semestre', 'error')} required">
	<label for="semestre">
		<g:message code="aluno_has_HorarioSemanal.semestre.label" default="Semestre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="semestre" maxlength="6" pattern="${aluno_has_HorarioSemanalInstance.constraints.semestre.matches}" required="" value="${aluno_has_HorarioSemanalInstance?.semestre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: aluno_has_HorarioSemanalInstance, field: 'aluno', 'error')} required">
	<label for="aluno">
		<g:message code="aluno_has_HorarioSemanal.aluno.label" default="Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aluno" name="aluno.id" from="${tfcmanager.Aluno.list()}" optionKey="id" required="" value="${aluno_has_HorarioSemanalInstance?.aluno?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: aluno_has_HorarioSemanalInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="aluno_has_HorarioSemanal.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="horario" name="horario.id" from="${tfcmanager.HorarioSemanal.list()}" optionKey="id" required="" value="${aluno_has_HorarioSemanalInstance?.horario?.id}" class="many-to-one"/>

</div>

