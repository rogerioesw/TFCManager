<%@ page import="tfcmanager.Documentos" %>



<div class="fieldcontain ${hasErrors(bean: documentosInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="documentos.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${documentosInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: documentosInstance, field: 'projetoorientacao', 'error')} required">
	<label for="projetoorientacao">
		<g:message code="documentos.projetoorientacao.label" default="Projetoorientacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="projetoorientacao" name="projetoorientacao.id" from="${tfcmanager.ProjetoOrientacao.list()}" optionKey="id" required="" value="${documentosInstance?.projetoorientacao?.id}" class="many-to-one"/>

</div>

