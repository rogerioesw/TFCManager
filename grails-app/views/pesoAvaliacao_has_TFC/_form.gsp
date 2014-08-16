<%@ page import="tfcmanager.PesoAvaliacao_has_TFC" %>



<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_TFCInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="pesoAvaliacao_has_TFC.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nota" value="${fieldValue(bean: pesoAvaliacao_has_TFCInstance, field: 'nota')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_TFCInstance, field: 'peso', 'error')} required">
	<label for="peso">
		<g:message code="pesoAvaliacao_has_TFC.peso.label" default="Peso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="peso" name="peso.id" from="${tfcmanager.PesoAvaliacao.list()}" optionKey="id" required="" value="${pesoAvaliacao_has_TFCInstance?.peso?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_TFCInstance, field: 'tfc', 'error')} required">
	<label for="tfc">
		<g:message code="pesoAvaliacao_has_TFC.tfc.label" default="Tfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tfc" name="tfc.id" from="${tfcmanager.TFC.list()}" optionKey="id" required="" value="${pesoAvaliacao_has_TFCInstance?.tfc?.id}" class="many-to-one"/>

</div>

