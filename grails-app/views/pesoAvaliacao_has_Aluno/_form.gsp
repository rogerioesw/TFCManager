<%@ page import="tfcmanager.PesoAvaliacao_has_Aluno" %>



<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_AlunoInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="pesoAvaliacao_has_Aluno.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nota" value="${fieldValue(bean: pesoAvaliacao_has_AlunoInstance, field: 'nota')}" required=""/>

</div>

