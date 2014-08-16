<%@ page import="tfcmanager.ProjetoOrientacao" %>



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

<div class="fieldcontain ${hasErrors(bean: projetoOrientacaoInstance, field: 'observacao', 'error')} required">
	<label for="observacao">
		<g:message code="projetoOrientacao.observacao.label" default="Observacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacao" required="" value="${projetoOrientacaoInstance?.observacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projetoOrientacaoInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="projetoOrientacao.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situacao" required="" value="${projetoOrientacaoInstance?.situacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projetoOrientacaoInstance, field: 'tema', 'error')} required">
	<label for="tema">
		<g:message code="projetoOrientacao.tema.label" default="Tema" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tema" required="" value="${projetoOrientacaoInstance?.tema}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projetoOrientacaoInstance, field: 'tfc', 'error')} ">
	<label for="tfc">
		<g:message code="projetoOrientacao.tfc.label" default="Tfc" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projetoOrientacaoInstance?.tfc?}" var="t">
    <li><g:link controller="TFC" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="TFC" action="create" params="['projetoOrientacao.id': projetoOrientacaoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'TFC.label', default: 'TFC')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: projetoOrientacaoInstance, field: 'usuarios', 'error')} ">
	<label for="usuarios">
		<g:message code="projetoOrientacao.usuarios.label" default="Usuarios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projetoOrientacaoInstance?.usuarios?}" var="u">
    <li><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="usuario" action="create" params="['projetoOrientacao.id': projetoOrientacaoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'usuario.label', default: 'Usuario')])}</g:link>
</li>
</ul>


</div>

