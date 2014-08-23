package tfcmanager

class TFC_has_Professor {
	String tipo
	
	static belongsTo = [Professor, TFC]

    static constraints = {
    }
}
