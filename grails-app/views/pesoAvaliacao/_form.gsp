<%@ page import="tfcmanager.PesoAvaliacao" %>



<div class="fieldcontain ${hasErrors(bean: pesoAvaliacaoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="pesoAvaliacao.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${pesoAvaliacaoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacaoInstance, field: 'percentual', 'error')} required">
	<label for="percentual">
		<g:message code="pesoAvaliacao.percentual.label" default="Percentual" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="percentual" type="number" value="${pesoAvaliacaoInstance.percentual}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacaoInstance, field: 'pesohasTFC', 'error')} ">
	<label for="pesohasTFC">
		<g:message code="pesoAvaliacao.pesohasTFC.label" default="Pesohas TFC" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pesoAvaliacaoInstance?.pesohasTFC?}" var="p">
    <li><g:link controller="pesoAvaliacao_has_TFC" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pesoAvaliacao_has_TFC" action="create" params="['pesoAvaliacao.id': pesoAvaliacaoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pesoAvaliacao_has_TFC.label', default: 'PesoAvaliacao_has_TFC')])}</g:link>
</li>
</ul>


</div>

