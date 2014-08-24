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

<div class="fieldcontain ${hasErrors(bean: horarioSemanalInstance, field: 'alunohasHorario', 'error')} ">
	<label for="alunohasHorario">
		<g:message code="horarioSemanal.alunohasHorario.label" default="Alunohas Horario" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${horarioSemanalInstance?.alunohasHorario?}" var="a">
    <li><g:link controller="aluno_has_HorarioSemanal" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="aluno_has_HorarioSemanal" action="create" params="['horarioSemanal.id': horarioSemanalInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'aluno_has_HorarioSemanal.label', default: 'Aluno_has_HorarioSemanal')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: horarioSemanalInstance, field: 'professorhasHorario', 'error')} ">
	<label for="professorhasHorario">
		<g:message code="horarioSemanal.professorhasHorario.label" default="Professorhas Horario" />
		
	</label>
	<g:select name="professorhasHorario" from="${tfcmanager.Professor_has_HorarioSemanal.list()}" multiple="multiple" optionKey="id" size="5" value="${horarioSemanalInstance?.professorhasHorario*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: horarioSemanalInstance, field: 'tfc', 'error')} ">
	<label for="tfc">
		<g:message code="horarioSemanal.tfc.label" default="Tfc" />
		
	</label>
	<g:select name="tfc" from="${tfcmanager.TFC.list()}" multiple="multiple" optionKey="id" size="5" value="${horarioSemanalInstance?.tfc*.id}" class="many-to-many"/>

</div>

