<%@ page import="tfcmanager.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="usuario.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${usuarioInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nomecompleto', 'error')} required">
	<label for="nomecompleto">
		<g:message code="usuario.nomecompleto.label" default="Nomecompleto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomecompleto" required="" value="${usuarioInstance?.nomecompleto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'projetoorientacao', 'error')} required">
	<label for="projetoorientacao">
		<g:message code="usuario.projetoorientacao.label" default="Projetoorientacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="projetoorientacao" name="projetoorientacao.id" from="${tfcmanager.ProjetoOrientacao.list()}" optionKey="id" required="" value="${usuarioInstance?.projetoorientacao?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="usuario.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${usuarioInstance?.senha}"/>  

</div>

