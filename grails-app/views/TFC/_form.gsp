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

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'pesohasTFC', 'error')} ">
	<label for="pesohasTFC">
		<g:message code="TFC.pesohasTFC.label" default="Pesohas TFC" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${TFCInstance?.pesohasTFC?}" var="p">
    <li><g:link controller="pesoAvaliacao_has_TFC" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pesoAvaliacao_has_TFC" action="create" params="['TFC.id': TFCInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pesoAvaliacao_has_TFC.label', default: 'PesoAvaliacao_has_TFC')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'presenca', 'error')} ">
	<label for="presenca">
		<g:message code="TFC.presenca.label" default="Presenca" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${TFCInstance?.presenca?}" var="p">
    <li><g:link controller="presencaOrientacao" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="presencaOrientacao" action="create" params="['TFC.id': TFCInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'presencaOrientacao.label', default: 'PresencaOrientacao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'projeto', 'error')} required">
	<label for="projeto">
		<g:message code="TFC.projeto.label" default="Projeto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="projeto" name="projeto.id" from="${tfcmanager.ProjetoOrientacao.list()}" optionKey="id" required="" value="${TFCInstance?.projeto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'seminario', 'error')} ">
	<label for="seminario">
		<g:message code="TFC.seminario.label" default="Seminario" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${TFCInstance?.seminario?}" var="s">
    <li><g:link controller="seminario" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="seminario" action="create" params="['TFC.id': TFCInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'seminario.label', default: 'Seminario')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'tfchasProfessor', 'error')} ">
	<label for="tfchasProfessor">
		<g:message code="TFC.tfchasProfessor.label" default="Tfchas Professor" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${TFCInstance?.tfchasProfessor?}" var="t">
    <li><g:link controller="TFC_has_Professor" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="TFC_has_Professor" action="create" params="['TFC.id': TFCInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'TFC_has_Professor.label', default: 'TFC_has_Professor')])}</g:link>
</li>
</ul>


</div>

