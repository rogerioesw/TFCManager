<%@ page import="tfcmanager.ProjetoOrientacao" %>



<div class="fieldcontain ${hasErrors(bean: projetoOrientacaoInstance, field: 'tema', 'error')} required">
	<label for="tema">
		<g:message code="projetoOrientacao.tema.label" default="Tema" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tema" maxlength="80" required="" value="${projetoOrientacaoInstance?.tema}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projetoOrientacaoInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="projetoOrientacao.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situacao" maxlength="10" required="" value="${projetoOrientacaoInstance?.situacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projetoOrientacaoInstance, field: 'observacao', 'error')} required">
	<label for="observacao">
		<g:message code="projetoOrientacao.observacao.label" default="Observacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacao" maxlength="120" required="" value="${projetoOrientacaoInstance?.observacao}"/>

</div>
