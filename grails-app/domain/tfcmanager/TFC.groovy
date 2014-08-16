package tfcmanager

class TFC {
	String semestre
	String situacao
	String observacao
	
	
	static belongsTo = [disciplina:Disciplina, projetoorientacao:ProjetoOrientacao,
		horariosemanal:HorarioSemanal, banca:BancaDefesa]
	
	static hasMany = [seminario : Seminario, presenca : PresencaOrientacao, 
		pesohasTFC : PesoAvaliacao_has_TFC, tfchasProfessor : TFC_has_Professor]

    static constraints = {
    }
}
