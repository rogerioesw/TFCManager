<%@ page import="tfcmanager.PresencaOrientacao" %>



<div class="fieldcontain ${hasErrors(bean: presencaOrientacaoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="presencaOrientacao.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${presencaOrientacaoInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: presencaOrientacaoInstance, field: 'observacao', 'error')} required">
	<label for="observacao">
		<g:message code="presencaOrientacao.observacao.label" default="Observacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacao" maxlength="25" required="" value="${presencaOrientacaoInstance?.observacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: presencaOrientacaoInstance, field: 'tfc', 'error')} required">
	<label for="tfc">
		<g:message code="presencaOrientacao.tfc.label" default="Tfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tfc" name="tfc.id" from="${tfcmanager.TFC.list()}" optionKey="id" required="" value="${presencaOrientacaoInstance?.tfc?.id}" class="many-to-one"/>

</div>

