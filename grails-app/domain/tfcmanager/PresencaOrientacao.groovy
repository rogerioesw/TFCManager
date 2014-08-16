package tfcmanager

class PresencaOrientacao {
	Date data
	String observacao
	
	static belongsTo = [tfc:TFC]

    static constraints = {
    }
}
