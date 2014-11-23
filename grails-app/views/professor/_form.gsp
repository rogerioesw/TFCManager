<%@ page import="tfcmanager.Professor" %>



<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="professor.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="40" required="" value="${professorInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="professor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${professorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="professor.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="area" required="" value="${professorInstance?.area}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'faculdade', 'error')} required">
	<label for="faculdade">
		<g:message code="professor.faculdade.label" default="Faculdade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="faculdade" name="faculdade.id" from="${tfcmanager.Faculdade.list()}" optionKey="id" required="" value="${professorInstance?.faculdade?.id}" class="many-to-one"/>

</div>

