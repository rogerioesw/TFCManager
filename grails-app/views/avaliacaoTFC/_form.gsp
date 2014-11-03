<%@ page import="tfcmanager.AvaliacaoTFC" %>

<div class="fieldcontain ${hasErrors(bean: avaliacaoTFCInstance, field: 'aluno', 'error')} required">
	<label for="aluno">
		<g:message code="avaliacaoTFC.aluno.label" default="Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aluno" name="aluno.id" from="${tfcmanager.Aluno.list()}" optionKey="id" required="" value="${avaliacaoTFCInstance?.aluno?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaliacaoTFCInstance, field: 'tfc', 'error')} required">
	<label for="tfc">
		<g:message code="avaliacaoTFC.tfc.label" default="Tfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tfc" name="tfc.id" from="${tfcmanager.TFC.list()}" optionKey="id" required="" value="${avaliacaoTFCInstance?.tfc?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaliacaoTFCInstance, field: 'preprojetoTFCI', 'error')} required">
	<label for="preprojetoTFCI">
		<g:message code="avaliacaoTFC.preprojetoTFCI.label" default="Pre-projeto ou TFCI" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="preprojetoTFCI" value="${fieldValue(bean: avaliacaoTFCInstance, field: 'preprojetoTFCI')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaliacaoTFCInstance, field: 'orientador', 'error')} required">
	<label for="orientador">
		<g:message code="avaliacaoTFC.orientador.label" default="Orientador" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="orientador" value="${fieldValue(bean: avaliacaoTFCInstance, field: 'orientador')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaliacaoTFCInstance, field: 'coordenador', 'error')} required">
	<label for="coordenador">
		<g:message code="avaliacaoTFC.coordenador.label" default="Coordenador" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="coordenador" value="${fieldValue(bean: avaliacaoTFCInstance, field: 'coordenador')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaliacaoTFCInstance, field: 'banca', 'error')} required">
	<label for="banca">
		<g:message code="avaliacaoTFC.banca.label" default="Banca" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="banca" value="${fieldValue(bean: avaliacaoTFCInstance, field: 'banca')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaliacaoTFCInstance, field: 'notafinal', 'error')} required">
	<label for="notafinal" style= "font-weight:bold;">
		<g:message code="avaliacaoTFC.notafinal.label" default="Nota Final" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="notafinal" value="${fieldValue(bean: avaliacaoTFCInstance, field: 'notafinal')}" readonly="true" style= "background:gray;" required=""/>

</div>

