<%@ page import="tfcmanager.BancaDefesa" %>



<div class="fieldcontain ${hasErrors(bean: bancaDefesaInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="bancaDefesa.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${bancaDefesaInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: bancaDefesaInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="bancaDefesa.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="horario" pattern="${bancaDefesaInstance.constraints.horario.matches}" required="" value="${bancaDefesaInstance?.horario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bancaDefesaInstance, field: 'observacao', 'error')} required">
	<label for="observacao">
		<g:message code="bancaDefesa.observacao.label" default="Observacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacao" maxlength="80" required="" value="${bancaDefesaInstance?.observacao}"/>

</div>
