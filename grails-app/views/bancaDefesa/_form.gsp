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

<div class="fieldcontain ${hasErrors(bean: bancaDefesaInstance, field: 'professor', 'error')} ">
	<label for="professor">
		<g:message code="bancaDefesa.professor.label" default="Professor" />
		
	</label>
	<g:select name="professor" from="${tfcmanager.Professor.list()}" multiple="multiple" optionKey="id" size="5" value="${bancaDefesaInstance?.professor*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bancaDefesaInstance, field: 'tfc', 'error')} required">
	<label for="tfc">
		<g:message code="bancaDefesa.tfc.label" default="Tfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tfc" name="tfc.id" from="${tfcmanager.TFC.list()}" optionKey="id" required="" value="${bancaDefesaInstance?.tfc?.id}" class="many-to-one"/>

</div>

