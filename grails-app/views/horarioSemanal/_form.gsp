<%@ page import="tfcmanager.HorarioSemanal" %>



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

<div class="fieldcontain ${hasErrors(bean: horarioSemanalInstance, field: 'professorhasHorario', 'error')} ">
	<label for="professorhasHorario">
		<g:message code="horarioSemanal.professorhasHorario.label" default="Professorhas Horario" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${horarioSemanalInstance?.professorhasHorario?}" var="p">
    <li><g:link controller="professor_has_HorarioSemanal" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="professor_has_HorarioSemanal" action="create" params="['horarioSemanal.id': horarioSemanalInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'professor_has_HorarioSemanal.label', default: 'Professor_has_HorarioSemanal')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: horarioSemanalInstance, field: 'tfc', 'error')} ">
	<label for="tfc">
		<g:message code="horarioSemanal.tfc.label" default="Tfc" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${horarioSemanalInstance?.tfc?}" var="t">
    <li><g:link controller="TFC" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="TFC" action="create" params="['horarioSemanal.id': horarioSemanalInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'TFC.label', default: 'TFC')])}</g:link>
</li>
</ul>


</div>

