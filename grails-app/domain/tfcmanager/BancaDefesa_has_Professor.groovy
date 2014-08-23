package tfcmanager

class BancaDefesa_has_Professor {
	
	static belongsTo = [professor:Professor, banca:BancaDefesa]

    static constraints = {
    }
}
