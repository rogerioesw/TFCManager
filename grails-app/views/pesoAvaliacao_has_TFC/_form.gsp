<%@ page import="tfcmanager.PesoAvaliacao_has_TFC" %>



<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_TFCInstance, field: 'notafinal', 'error')} required">
	<label for="notafinal">
		<g:message code="pesoAvaliacao_has_TFC.notafinal.label" default="Notafinal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="notafinal" value="${fieldValue(bean: pesoAvaliacao_has_TFCInstance, field: 'notafinal')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_TFCInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="pesoAvaliacao_has_TFC.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situacao" required="" value="${pesoAvaliacao_has_TFCInstance?.situacao}"/>

</div>

