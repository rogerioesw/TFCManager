package tfcmanager

class PesoAvaliacao_has_TFC {
	String situacao
	double notafinal
	PesoAvaliacao_has_Aluno pesoavaliacao
	TFC tfc
	Aluno aluno
	

    static constraints = {
		situacao(blank:false, maxSize:10, minSize:6)
		notafinal(nullable:false, blank:false)
    }
}
