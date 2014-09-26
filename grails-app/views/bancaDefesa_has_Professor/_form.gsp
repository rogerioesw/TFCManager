<%@ page import="tfcmanager.BancaDefesa_has_Professor" %>

<script type="text/javascript" src="${resource(dir:'js',file:'AbreJanela.js')}"></script>

<div class="fieldcontain ${hasErrors(bean: bancaDefesa_has_ProfessorInstance, field: 'banca', 'error')} required">
	<label for="banca">
		<g:message code="bancaDefesa_has_Professor.banca.label" default="Banca" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="banca" name="banca.id" from="${tfcmanager.BancaDefesa.list()}" optionKey="id" required="" value="${bancaDefesa_has_ProfessorInstance?.banca?.id}" class="many-to-one"/>
	<input type="button" class="home" onclick="abrejanelabanca()" value="...">
</div>

<div class="fieldcontain ${hasErrors(bean: bancaDefesa_has_ProfessorInstance, field: 'professor', 'error')} required">
	<label for="professor">
		<g:message code="bancaDefesa_has_Professor.professor.label" default="Professor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="professor" name="professor.id" from="${tfcmanager.Professor.list()}" optionKey="id" required="" value="${bancaDefesa_has_ProfessorInstance?.professor?.id}" class="many-to-one"/>
	<input type="button" class="home" onclick="abrejanelaprofessor()" value="...">
</div>

