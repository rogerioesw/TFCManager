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

<div class="fieldcontain ${hasErrors(bean: projetoOrientacaoInstance, field: 'documentos', 'error')} ">
	<label for="documentos">
		<g:message code="projetoOrientacao.documentos.label" default="Documentos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projetoOrientacaoInstance?.documentos?}" var="d">
    <li><g:link controller="documentos" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="documentos" action="create" params="['projetoOrientacao.id': projetoOrientacaoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'documentos.label', default: 'Documentos')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: projetoOrientacaoInstance, field: 'tfc', 'error')} ">
	<label for="tfc">
		<g:message code="projetoOrientacao.tfc.label" default="Tfc" />
		
	</label>
	<g:select name="tfc" from="${tfcmanager.TFC.list()}" multiple="multiple" optionKey="id" size="5" value="${projetoOrientacaoInstance?.tfc*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projetoOrientacaoInstance, field: 'usuarios', 'error')} ">
	<label for="usuarios">
		<g:message code="projetoOrientacao.usuarios.label" default="Usuarios" />
		
	</label>
	<g:select name="usuarios" from="${tfcmanager.Usuario.list()}" multiple="multiple" optionKey="id" size="5" value="${projetoOrientacaoInstance?.usuarios*.id}" class="many-to-many"/>

</div>

