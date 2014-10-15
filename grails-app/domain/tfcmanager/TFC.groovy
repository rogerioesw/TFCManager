package tfcmanager

class TFC {
	String semestre
	String situacao
	String observacao
	Disciplina disciplina
	ProjetoOrientacao projeto
	HorarioSemanal horario

	
	
	static hasMany = [seminario : Seminario, presenca : PresencaOrientacao, 
		pesohasTFC:PesoAvaliacao_has_TFC, tfchasProfessor : TFC_has_Professor]

    static constraints = {
		semestre(blank:false, minSize:6, maxSize:6, matches:"^([1-9][0-9][0-9][0-9])/([1]|[2])")
		situacao(blank:false, minSize:5, maxSize:8)
		observacao(blank:false, minSize:5, maxSize:30)
    }
}
