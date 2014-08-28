<%@ page import="tfcmanager.Seminario" %>



<div class="fieldcontain ${hasErrors(bean: seminarioInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="seminario.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${seminarioInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: seminarioInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="seminario.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${seminarioInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seminarioInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="seminario.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="horario" required="" value="${seminarioInstance?.horario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seminarioInstance, field: 'observacao', 'error')} required">
	<label for="observacao">
		<g:message code="seminario.observacao.label" default="Observacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacao" required="" value="${seminarioInstance?.observacao}"/>

</div>

