<%@ page import="tfcmanager.Disciplina" %>



<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="disciplina.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${disciplinaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="disciplina.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${disciplinaInstance?.status}"/>

</div>
