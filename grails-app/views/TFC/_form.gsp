<%@ page import="tfcmanager.TFC" %>



<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'semestre', 'error')} required">
	<label for="semestre">
		<g:message code="TFC.semestre.label" default="Semestre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="semestre" maxlength="6" pattern="${TFCInstance.constraints.semestre.matches}" required="" value="${TFCInstance?.semestre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="TFC.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situacao" maxlength="8" required="" value="${TFCInstance?.situacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'observacao', 'error')} required">
	<label for="observacao">
		<g:message code="TFC.observacao.label" default="Observacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacao" maxlength="30" required="" value="${TFCInstance?.observacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'banca', 'error')} required">
	<label for="banca">
		<g:message code="TFC.banca.label" default="Banca" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="banca" name="banca.id" from="${tfcmanager.BancaDefesa.list()}" optionKey="id" required="" value="${TFCInstance?.banca?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'disciplina', 'error')} required">
	<label for="disciplina">
		<g:message code="TFC.disciplina.label" default="Disciplina" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="disciplina" name="disciplina.id" from="${tfcmanager.Disciplina.list()}" optionKey="id" required="" value="${TFCInstance?.disciplina?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="TFC.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="horario" name="horario.id" from="${tfcmanager.HorarioSemanal.list()}" optionKey="id" required="" value="${TFCInstance?.horario?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'projeto', 'error')} required">
	<label for="projeto">
		<g:message code="TFC.projeto.label" default="Projeto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="projeto" name="projeto.id" from="${tfcmanager.ProjetoOrientacao.list()}" optionKey="id" required="" value="${TFCInstance?.projeto?.id}" class="many-to-one"/>

</div>

