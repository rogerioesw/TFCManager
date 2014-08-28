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

<div class="fieldcontain ${hasErrors(bean: bancaDefesaInstance, field: 'bancahasProfessor', 'error')} ">
	<label for="bancahasProfessor">
		<g:message code="bancaDefesa.bancahasProfessor.label" default="Bancahas Professor" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${bancaDefesaInstance?.bancahasProfessor?}" var="b">
    <li><g:link controller="bancaDefesa_has_Professor" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="bancaDefesa_has_Professor" action="create" params="['bancaDefesa.id': bancaDefesaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'bancaDefesa_has_Professor.label', default: 'BancaDefesa_has_Professor')])}</g:link>
</li>
</ul>


</div>

