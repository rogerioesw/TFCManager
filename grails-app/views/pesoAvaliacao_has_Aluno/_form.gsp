<%@ page import="tfcmanager.PesoAvaliacao_has_Aluno" %>

<script type="text/javascript" src="${resource(dir:'js',file:'AbreJanela.js')}"></script>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_AlunoInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="pesoAvaliacao_has_Aluno.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nota" value="${fieldValue(bean: pesoAvaliacao_has_AlunoInstance, field: 'nota')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_AlunoInstance, field: 'peso', 'error')} required">
	<label for="peso">
		<g:message code="pesoAvaliacao_has_Aluno.peso.label" default="Peso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="peso" name="peso.id" from="${tfcmanager.PesoAvaliacao.list()}" optionKey="id" required="" value="${pesoAvaliacao_has_AlunoInstance?.peso?.id}" class="many-to-one"/>
	<input type="button" class="home" onclick="abrejanelapesoavaliacao()" value="...">
</div>

