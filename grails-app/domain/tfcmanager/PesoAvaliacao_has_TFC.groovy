package tfcmanager

class PesoAvaliacao_has_TFC {
	double nota
	
	static belongsTo = [peso:PesoAvaliacao, tfc:TFC]

    static constraints = {
    }
}
