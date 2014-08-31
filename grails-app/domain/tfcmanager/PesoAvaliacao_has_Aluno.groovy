package tfcmanager

class PesoAvaliacao_has_Aluno {
	double nota
	PesoAvaliacao peso

    static constraints = {
		nota(blank:false, nullable:false)
    }
}
