<%@ page import="tfcmanager.Seminario" %>



<div class="fieldcontain ${hasErrors(bean: seminarioInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="seminario.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="15" required="" value="${seminarioInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seminarioInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="seminario.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${seminarioInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: seminarioInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="seminario.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="horario" pattern="${seminarioInstance.constraints.horario.matches}" required="" value="${seminarioInstance?.horario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seminarioInstance, field: 'observacao', 'error')} required">
	<label for="observacao">
		<g:message code="seminario.observacao.label" default="Observacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacao" maxlength="40" required="" value="${seminarioInstance?.observacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seminarioInstance, field: 'tfc', 'error')} required">
	<label for="tfc">
		<g:message code="seminario.tfc.label" default="Tfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tfc" name="tfc.id" from="${tfcmanager.TFC.list()}" optionKey="id" required="" value="${seminarioInstance?.tfc?.id}" class="many-to-one"/>

</div>

