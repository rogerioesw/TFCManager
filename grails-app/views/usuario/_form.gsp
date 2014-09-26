<%@ page import="tfcmanager.Usuario" %>

<script type="text/javascript" src="${resource(dir:'js',file:'AbreJanela.js')}"></script>

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

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'projeto', 'error')} required">
	<label for="projeto">
		<g:message code="usuario.projeto.label" default="Projeto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="projeto" name="projeto.id" from="${tfcmanager.ProjetoOrientacao.list()}" optionKey="id" required="" value="${usuarioInstance?.projeto?.id}" class="many-to-one"/>
	<input type="button" class="home" onclick="abrejanelaprojetoorientacao()" value="...">
</div>

