<%@ page import="tfcmanager.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="usuario.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" maxlength="20" required="" value="${usuarioInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nomecompleto', 'error')} required">
	<label for="nomecompleto">
		<g:message code="usuario.nomecompleto.label" default="Nomecompleto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomecompleto" maxlength="100" required="" value="${usuarioInstance?.nomecompleto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="usuario.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" maxlength="15" required="" value="${usuarioInstance?.senha}"/>

</div>

