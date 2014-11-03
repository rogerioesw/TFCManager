<%@ page import="tfcmanager.Disciplina" %>



<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="disciplina.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nome" from="${disciplinaInstance.constraints.nome.inList}" required="" value="${disciplinaInstance?.nome}" valueMessagePrefix="disciplina.nome"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="disciplina.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${disciplinaInstance.constraints.status.inList}" required="" value="${disciplinaInstance?.status}" valueMessagePrefix="disciplina.status"/>

</div>


