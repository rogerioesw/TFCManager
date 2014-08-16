<%@ page import="tfcmanager.Professor" %>



<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'bancahasProfessor', 'error')} ">
	<label for="bancahasProfessor">
		<g:message code="professor.bancahasProfessor.label" default="Bancahas Professor" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${professorInstance?.bancahasProfessor?}" var="b">
    <li><g:link controller="bancaDefesa_has_Professor" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="bancaDefesa_has_Professor" action="create" params="['professor.id': professorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'bancaDefesa_has_Professor.label', default: 'BancaDefesa_has_Professor')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="professor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${professorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="professor.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${professorInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'professorhasHorario', 'error')} ">
	<label for="professorhasHorario">
		<g:message code="professor.professorhasHorario.label" default="Professorhas Horario" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${professorInstance?.professorhasHorario?}" var="p">
    <li><g:link controller="professor_has_HorarioSemanal" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="professor_has_HorarioSemanal" action="create" params="['professor.id': professorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'professor_has_HorarioSemanal.label', default: 'Professor_has_HorarioSemanal')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'tfchasProfessor', 'error')} ">
	<label for="tfchasProfessor">
		<g:message code="professor.tfchasProfessor.label" default="Tfchas Professor" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${professorInstance?.tfchasProfessor?}" var="t">
    <li><g:link controller="TFC_has_Professor" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="TFC_has_Professor" action="create" params="['professor.id': professorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'TFC_has_Professor.label', default: 'TFC_has_Professor')])}</g:link>
</li>
</ul>


</div>

