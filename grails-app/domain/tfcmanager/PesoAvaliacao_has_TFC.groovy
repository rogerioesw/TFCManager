package tfcmanager

class PesoAvaliacao_has_TFC {
	String situacao
	double notafinal
	
	static belongsTo = [pesoavaliacao:PesoAvaliacao_has_Aluno, tfc:TFC, aluno:Aluno]

    static constraints = {
		situacao(blank:false, maxSize:10, minSize:6)
		notafinal(nullable:false, blank:false)
    }
}
