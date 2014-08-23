package tfcmanager

class PesoAvaliacao {
	String descricao
	int percentual
	
	static hasMany = [pesohasAluno:PesoAvaliacao_has_Aluno]

    static constraints = {
    }
}
