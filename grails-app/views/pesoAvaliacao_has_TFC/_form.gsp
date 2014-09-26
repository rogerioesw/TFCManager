<%@ page import="tfcmanager.PesoAvaliacao_has_TFC" %>

<script type="text/javascript" src="${resource(dir:'js',file:'AbreJanela.js')}"></script>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_TFCInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="pesoAvaliacao_has_TFC.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situacao" maxlength="10" required="" value="${pesoAvaliacao_has_TFCInstance?.situacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_TFCInstance, field: 'notafinal', 'error')} required">
	<label for="notafinal">
		<g:message code="pesoAvaliacao_has_TFC.notafinal.label" default="Notafinal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="notafinal" value="${fieldValue(bean: pesoAvaliacao_has_TFCInstance, field: 'notafinal')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_TFCInstance, field: 'aluno', 'error')} required">
	<label for="aluno">
		<g:message code="pesoAvaliacao_has_TFC.aluno.label" default="Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aluno" name="aluno.id" from="${tfcmanager.Aluno.list()}" optionKey="id" required="" value="${pesoAvaliacao_has_TFCInstance?.aluno?.id}" class="many-to-one"/>
	<input type="button" class="home" onclick="abrejanelaaluno()" value="...">
</div>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_TFCInstance, field: 'pesoavaliacao', 'error')} required">
	<label for="pesoavaliacao">
		<g:message code="pesoAvaliacao_has_TFC.pesoavaliacao.label" default="Pesoavaliacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pesoavaliacao" name="pesoavaliacao.id" from="${tfcmanager.PesoAvaliacao_has_Aluno.list()}" optionKey="id" required="" value="${pesoAvaliacao_has_TFCInstance?.pesoavaliacao?.id}" class="many-to-one"/>
	<input type="button" class="home" onclick="abrejanelapesoavaliacaohasaluno()" value="...">
</div>

<div class="fieldcontain ${hasErrors(bean: pesoAvaliacao_has_TFCInstance, field: 'tfc', 'error')} required">
	<label for="tfc">
		<g:message code="pesoAvaliacao_has_TFC.tfc.label" default="Tfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tfc" name="tfc.id" from="${tfcmanager.TFC.list()}" optionKey="id" required="" value="${pesoAvaliacao_has_TFCInstance?.tfc?.id}" class="many-to-one"/>
	<input type="button" class="home" onclick="abrejanelatfc()" value="...">
</div>

