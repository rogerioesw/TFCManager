<%@ page import="tfcmanager.Formula" %>



<div class="fieldcontain ${hasErrors(bean: formulaInstance, field: 'coordenador', 'error')} required">
	<label for="coordenador">
		<g:message code="formula.coordenador.label" default="Coordenador" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="coordenador" value="${fieldValue(bean: formulaInstance, field: 'coordenador')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaInstance, field: 'orientador', 'error')} required">
	<label for="orientador">
		<g:message code="formula.orientador.label" default="Orientador" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="orientador" value="${fieldValue(bean: formulaInstance, field: 'orientador')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaInstance, field: 'banca', 'error')} required">
	<label for="banca">
		<g:message code="formula.banca.label" default="Banca" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="banca" value="${fieldValue(bean: formulaInstance, field: 'banca')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaInstance, field: 'preprojetoTFCI', 'error')} required">
	<label for="preprojetoTFCI">
		<g:message code="formula.preprojetoTFCI.label" default="Preprojeto TFCI" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="preprojetoTFCI" value="${fieldValue(bean: formulaInstance, field: 'preprojetoTFCI')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="formula.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${formulaInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formulaInstance, field: 'disciplina', 'error')} required">
	<label for="disciplina">
		<g:message code="formula.disciplina.label" default="Disciplina" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="disciplina" name="disciplina.id" from="${tfcmanager.Disciplina.list()}" optionKey="id" required="" value="${formulaInstance?.disciplina?.id}" class="many-to-one"/>

</div>

