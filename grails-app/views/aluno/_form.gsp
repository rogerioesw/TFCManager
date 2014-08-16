<%@ page import="tfcmanager.Aluno" %>



<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'alunohasHorario', 'error')} ">
	<label for="alunohasHorario">
		<g:message code="aluno.alunohasHorario.label" default="Alunohas Horario" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${alunoInstance?.alunohasHorario?}" var="a">
    <li><g:link controller="aluno_has_HorarioSemanal" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="aluno_has_HorarioSemanal" action="create" params="['aluno.id': alunoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'aluno_has_HorarioSemanal.label', default: 'Aluno_has_HorarioSemanal')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="aluno.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${alunoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'faculdade', 'error')} required">
	<label for="faculdade">
		<g:message code="aluno.faculdade.label" default="Faculdade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="faculdade" required="" value="${alunoInstance?.faculdade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="aluno.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${alunoInstance?.nome}"/>

</div>

