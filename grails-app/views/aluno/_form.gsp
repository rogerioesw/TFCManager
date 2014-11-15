<%@ page import="tfcmanager.Aluno" %>

<script type="text/javascript" src="${resource(dir:'js',file:'AbreJanela.js')}"></script>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="aluno.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="40" required="" value="${alunoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="aluno.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${alunoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'faculdade', 'error')} required">
	<label for="faculdade">
		<g:message code="aluno.faculdade.label" default="Faculdade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="faculdade" name="faculdade.id" from="${tfcmanager.Faculdade.list()}" optionKey="id" required="" value="${alunoInstance?.faculdade?.id}" class="many-to-one"/>
	<input type="button" class="home" onclick="abrejanelafaculdade()" value="...">
</div>

