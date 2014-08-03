<%@ page import="tfcmanager.Professor" %>



<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="professor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${professorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'horario', 'error')} ">
	<label for="horario">
		<g:message code="professor.horario.label" default="Horario" />
		
	</label>
	<g:select name="horario" from="${tfcmanager.HorarioSemanal.list()}" multiple="multiple" optionKey="id" size="5" value="${professorInstance?.horario*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="professor.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${professorInstance?.nome}"/>

</div>

