package tfcmanager

class PesoAvaliacao_has_Aluno {
	double nota
	
	static belongsTo = [peso:PesoAvaliacao]

    static constraints = {
		nota(blank:false, nullable:false)
    }
}
