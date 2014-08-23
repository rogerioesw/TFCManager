package tfcmanager

class PesoAvaliacao_has_TFC {
	String situacao
	double notafinal
	
	static belongsTo = [PesoAvaliacao_has_Aluno, TFC, Aluno]

    static constraints = {
    }
}
