<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Relatórios</title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<h1>Gerar Formulários</h1>
		<table>
			<tr>
				<td width="100px">
					<g:form action="anexo0" target="blank">
						<input type="submit" value="Convite de Orientação"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo1" target="blank">
						<input type="submit" value="Declaração de Ciência das Normas"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo2" target="blank">
						<input type="submit" value="Frequência de Orientação"/>
					</g:form>
				</td>
			</tr>
			<tr>
				<td>
					<g:form action="anexo3" target="blank">
						<input type="submit" value="Relatório Parcial"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo4" target="blank">
						<input type="submit" value="Encaminhamento a Defesa de Banca"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo5" target="blank">
						<input type="submit" value="Ficha de Avaliação do TCC"/>
					</g:form>
				</td>
			</tr>
			<tr>
				<td>
					<g:form action="anexo6" target="blank">
						<input type="submit" value="Formulário de Avaliação do TCC"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo7" target="blank">
						<input type="submit" value="Convite para Banca"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo8" target="blank">
						<input type="submit" value="Checklist"/>
					</g:form>
				</td>
			</tr>
			<tr>
				<td>
					<g:form action="anexo9" target="blank">
						<input type="submit" value="Folha de Aprovação"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo10" target="blank">
						<input type="submit" value="Declaração de Correção de Português"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo11" target="blank">
						<input type="submit" value="Declaração de Correção de Banca"/>
					</g:form>
				</td>
			</tr>
			<tr>
				<td>
					<g:form action="anexo12" target="blank">
						<input type="submit" value="Declaração de Participação em Banca"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo121" target="blank">
						<input type="submit" value="Declaração de Participação em Orientação"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo22" target="blank">
						<input type="submit" value="Horário de Bancas"/>
					</g:form>
				</td>
			</tr>
			<tr>
				<td>
					<g:form action="anexo32" target="blank">
						<input type="submit" value="Participação em pré-banca"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo35" target="blank">
						<input type="submit" value="Horários de seminários"/>
					</g:form>
				</td>
				<td>
					<g:form action="anexo36" target="blank">
						<input type="submit" value="Formulário de convocação"/>
					</g:form>
				</td>
			</tr>
			<tr>
				<td>
					<g:form action="anexo37" target="blank">
						<input type="submit" value="Formulário de Memorandos"/>
					</g:form>
				</td>
			</tr>
		</table>
	</body>
</html>
