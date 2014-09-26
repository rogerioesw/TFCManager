<%@ page import="tfcmanager.BancaDefesa" %>

<script type="text/javascript" src="${resource(dir:'js',file:'AbreJanela.js')}"></script>

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


<div class="fieldcontain ${hasErrors(bean: bancaDefesaInstance, field: 'tfc', 'error')} required">
	<label for="tfc">
		<g:message code="bancaDefesa.tfc.label" default="Tfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tfc" name="tfc.id" from="${tfcmanager.TFC.list()}" optionKey="id" required="" value="${bancaDefesaInstance?.tfc?.id}" class="many-to-one"/>
	<input type="button" class="home" onclick="abrejanelatfc()" value="...">
</div>

