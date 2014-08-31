<%@ page import="tfcmanager.Professor_has_Convocacao" %>



<div class="fieldcontain ${hasErrors(bean: professor_has_ConvocacaoInstance, field: 'convocacao', 'error')} required">
	<label for="convocacao">
		<g:message code="professor_has_Convocacao.convocacao.label" default="Convocacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="convocacao" name="convocacao.id" from="${tfcmanager.Convocacao.list()}" optionKey="id" required="" value="${professor_has_ConvocacaoInstance?.convocacao?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: professor_has_ConvocacaoInstance, field: 'professor', 'error')} required">
	<label for="professor">
		<g:message code="professor_has_Convocacao.professor.label" default="Professor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="professor" name="professor.id" from="${tfcmanager.Professor.list()}" optionKey="id" required="" value="${professor_has_ConvocacaoInstance?.professor?.id}" class="many-to-one"/>

</div>

