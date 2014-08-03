package tfcmanager

class TFC {
	String semestre
	String situacao
	String observacao
	
	Disciplina disciplina
	ProjetoOrientacao projetoorientacao
	HorarioSemanal horariosemanal
	BancaDefesa banca
	
	static hasMany = [seminario : Seminario, peso : PesoAvaliacao, professor : Professor, 
		presenca : PresencaOrientacao, aluno : Aluno]
	static belongsTo = Professor

    static constraints = {
    }
}
