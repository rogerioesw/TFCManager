<%@ page import="tfcmanager.PesoAvaliacao" %>



<div class="fieldcontain ${hasErrors(bean: pesoAvaliacaoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="pesoAvaliacao.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${pesoAvaliacaoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacaoInstance, field: 'percentual', 'error')} required">
	<label for="percentual">
		<g:message code="pesoAvaliacao.percentual.label" default="Percentual" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="percentual" type="number" value="${pesoAvaliacaoInstance.percentual}" required=""/>

</div>

