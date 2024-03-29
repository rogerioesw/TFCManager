<%@ page import="tfcmanager.TFC" %>

<script type="text/javascript" src="${resource(dir:'js',file:'AbreJanela.js')}"></script>

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

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'aluno', 'error')} ">
	<label for="aluno">
		<g:message code="TFC.aluno.label" default="Aluno" />
		
	</label>
	<g:select name="aluno" from="${tfcmanager.Aluno.list()}" multiple="multiple" optionKey="id" size="5" value="${TFCInstance?.aluno*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'disciplina', 'error')} required">
	<label for="disciplina">
		<g:message code="TFC.disciplina.label" default="Disciplina" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="disciplina" name="disciplina.id" from="${tfcmanager.Disciplina.list()}" optionKey="id" required="" value="${TFCInstance?.disciplina?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'formula', 'error')} required">
	<label for="formula">
		<g:message code="TFC.formula.label" default="Formula" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="formula" name="formula.id" from="${tfcmanager.Formula.list()}" optionKey="id" required="" value="${TFCInstance?.formula?.id}" class="many-to-one"/>
	<input type="button" class="home" onclick="abrejanelaformula()" value="...">
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
	<g:textField name="projeto" required="" value="${TFCInstance?.projeto}"/>

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

<div class="fieldcontain ${hasErrors(bean: TFCInstance, field: 'tfc_has_professor', 'error')} ">
	<label for="tfc_has_professor">
		<g:message code="TFC.tfc_has_professor.label" default="Orientador" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${TFCInstance?.tfc_has_professor?}" var="t">
    <li><g:link controller="TFC_has_Professor" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="TFC_has_Professor" action="create" params="['TFC.id': TFCInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'TFC_has_Professor.label', default: 'Orientador')])}</g:link>
</li>
</ul>


</div>

