<%@ page import="tfcmanager.TFC_has_Professor" %>



<div class="fieldcontain ${hasErrors(bean: TFC_has_ProfessorInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="TFC_has_Professor.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${TFC_has_ProfessorInstance.constraints.tipo.inList}" required="" value="${TFC_has_ProfessorInstance?.tipo}" valueMessagePrefix="TFC_has_Professor.tipo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFC_has_ProfessorInstance, field: 'professor', 'error')} required">
	<label for="professor">
		<g:message code="TFC_has_Professor.professor.label" default="Professor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="professor" name="professor.id" from="${tfcmanager.Professor.list()}" optionKey="id" required="" value="${TFC_has_ProfessorInstance?.professor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFC_has_ProfessorInstance, field: 'tfc', 'error')} required">
	<label for="tfc">
		<g:message code="TFC_has_Professor.tfc.label" default="Tfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tfc" name="tfc.id" from="${tfcmanager.TFC.list()}" optionKey="id" required="" value="${TFC_has_ProfessorInstance?.tfc?.id}" class="many-to-one"/>

</div>

