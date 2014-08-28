<%@ page import="tfcmanager.Faculdade" %>



<div class="fieldcontain ${hasErrors(bean: faculdadeInstance, field: 'aluno', 'error')} ">
	<label for="aluno">
		<g:message code="faculdade.aluno.label" default="Aluno" />
		
	</label>
	<g:select name="aluno" from="${tfcmanager.Aluno.list()}" multiple="multiple" optionKey="id" size="5" value="${faculdadeInstance?.aluno*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: faculdadeInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="faculdade.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${faculdadeInstance?.nome}"/>

</div>

