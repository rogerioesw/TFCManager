<%@ page import="tfcmanager.Memorando" %>



<div class="fieldcontain ${hasErrors(bean: memorandoInstance, field: 'ano', 'error')} required">
	<label for="ano">
		<g:message code="memorando.ano.label" default="Ano" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ano" type="number" value="${memorandoInstance.ano}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memorandoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="memorando.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${memorandoInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: memorandoInstance, field: 'assunto', 'error')} required">
	<label for="assunto">
		<g:message code="memorando.assunto.label" default="Assunto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="assunto" maxlength="25" required="" value="${memorandoInstance?.assunto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memorandoInstance, field: 'mensagem', 'error')} required">
	<label for="mensagem">
		<g:message code="memorando.mensagem.label" default="Mensagem" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mensagem" maxlength="80" required="" value="${memorandoInstance?.mensagem}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memorandoInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="memorando.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${memorandoInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memorandoInstance, field: 'professor', 'error')} ">
	<label for="professor">
		<g:message code="memorando.professor.label" default="Professor" />
		
	</label>
	<g:select name="professor" from="${tfcmanager.Professor.list()}" multiple="multiple" optionKey="id" size="5" value="${memorandoInstance?.professor*.id}" class="many-to-many"/>

</div>

