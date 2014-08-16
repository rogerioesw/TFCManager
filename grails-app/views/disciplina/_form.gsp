<%@ page import="tfcmanager.Disciplina" %>



<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="disciplina.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${disciplinaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="disciplina.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${disciplinaInstance?.status}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'tfc', 'error')} ">
	<label for="tfc">
		<g:message code="disciplina.tfc.label" default="Tfc" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${disciplinaInstance?.tfc?}" var="t">
    <li><g:link controller="TFC" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="TFC" action="create" params="['disciplina.id': disciplinaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'TFC.label', default: 'TFC')])}</g:link>
</li>
</ul>


</div>

