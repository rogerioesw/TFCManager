<%@ page import="tfcmanager.TFC" %>



<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'observacao', 'error')} required">
	<label for="observacao">
		<g:message code="TFC.observacao.label" default="Observacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacao" required="" value="${TFCInstance?.observacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'pesohasTFC', 'error')} ">
	<label for="pesohasTFC">
		<g:message code="TFC.pesohasTFC.label" default="Pesohas TFC" />
		
	</label>
	<g:select name="pesohasTFC" from="${tfcmanager.PesoAvaliacao_has_TFC.list()}" multiple="multiple" optionKey="id" size="5" value="${TFCInstance?.pesohasTFC*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'presenca', 'error')} ">
	<label for="presenca">
		<g:message code="TFC.presenca.label" default="Presenca" />
		
	</label>
	<g:select name="presenca" from="${tfcmanager.PresencaOrientacao.list()}" multiple="multiple" optionKey="id" size="5" value="${TFCInstance?.presenca*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'semestre', 'error')} required">
	<label for="semestre">
		<g:message code="TFC.semestre.label" default="Semestre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="semestre" required="" value="${TFCInstance?.semestre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'seminario', 'error')} ">
	<label for="seminario">
		<g:message code="TFC.seminario.label" default="Seminario" />
		
	</label>
	<g:select name="seminario" from="${tfcmanager.Seminario.list()}" multiple="multiple" optionKey="id" size="5" value="${TFCInstance?.seminario*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="TFC.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situacao" required="" value="${TFCInstance?.situacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'tfchasProfessor', 'error')} ">
	<label for="tfchasProfessor">
		<g:message code="TFC.tfchasProfessor.label" default="Tfchas Professor" />
		
	</label>
	<g:select name="tfchasProfessor" from="${tfcmanager.TFC_has_Professor.list()}" multiple="multiple" optionKey="id" size="5" value="${TFCInstance?.tfchasProfessor*.id}" class="many-to-many"/>

</div>

