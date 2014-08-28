package tfcmanager

class PesoAvaliacao {
	String descricao
	int percentual
	
	static hasMany = [pesohasAluno:PesoAvaliacao_has_Aluno]

    static constraints = {
		descricao(blank:false, minSize:4, maxSize:14)
		percentual(blank:false, nullable:false)
    }
}
