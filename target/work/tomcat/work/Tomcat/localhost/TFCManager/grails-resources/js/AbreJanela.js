function abrejanelafaculdade() {
	//var result = window.("/TFCManager/faculdade/create", "Faculdade", "dialogWidth:500px; dialogHeight:400px; center:yes");
	//parent.location.reload(true);
	
	//pesquisar onclose e refresh para atualizar a pagina pai
	var result = window.showModalDialog("/TFCManager/faculdade/create", "Faculdade", "dialogWidth:500px; dialogHeight:400px; center:yes");
	window.location.reload();
}

function abrejanelaaluno() {
	var result = window.showModalDialog("/TFCManager/aluno/create", "Aluno", "dialogWidth:500px; dialogHeight:400px; center:yes");
	window.location.reload();
}

function abrejanelahorario() {
	var result = window.showModalDialog("/TFCManager/horarioSemanal/create", "Horario Semanal", "dialogWidth:500px; dialogHeight:400px; center:yes");
	window.location.reload();
}

function abrejanelatfc() {
	var result = window.showModalDialog("/TFCManager/TFC/create", "TFC", "dialogWidth:500px; dialogHeight:400px; center:yes");
	window.location.reload();
}

function abrejanelaprofessor() {
	var result = window.showModalDialog("/TFCManager/professor/create", "Professor", "dialogWidth:500px; dialogHeight:400px; center:yes");
	window.location.reload();
}

function abrejanelabanca() {
	var result = window.showModalDialog("/TFCManager/bancaDefesa/create", "Banca Defesa", "dialogWidth:500px; dialogHeight:400px; center:yes");
	window.location.reload();
}

function abrejanelaprojetoorientacao() {
	var result = window.showModalDialog("/TFCManager/projetoOrientacao/create", "Projeto Orientação", "dialogWidth:500px; dialogHeight:400px; center:yes");
	window.location.reload();
}

function abrejanelapesoavaliacao() {
	var result = window.showModalDialog("/TFCManager/pesoAvaliacao/create", "Peso Avaliação", "dialogWidth:500px; dialogHeight:400px; center:yes");
	window.location.reload();
}

function abrejanelapesoavaliacaohasaluno() {
	var result = window.showModalDialog("/TFCManager/pesoAvaliacao_has_Aluno/create", "Peso Avaliação do Aluno", "dialogWidth:500px; dialogHeight:400px; center:yes");
	window.location.reload();
}

function abrejanelaconvocacao() {
	var result = window.showModalDialog("/TFCManager/convocacao/create", "Convocação", "dialogWidth:500px; dialogHeight:400px; center:yes");
	window.location.reload();
}

function abrejaneladisciplina() {
	var result = window.showModalDialog("/TFCManager/disciplina/create", "Disciplina", "dialogWidth:500px; dialogHeight:400px; center:yes");
	window.location.reload();
}