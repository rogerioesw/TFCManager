package tfcmanager

class BancaDefesa_has_Professor {
	double nota
	String observacao
	
	static belongsTo = [professor:Professor, banca:BancaDefesa]

    static constraints = {
    }
}
