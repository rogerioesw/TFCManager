package tfcmanager

class TFC_has_Professor {
	String tipo
	
	static belongsTo = [professor:Professor, tfc:TFC]

    static constraints = {
    }
}
