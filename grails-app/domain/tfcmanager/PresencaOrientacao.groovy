package tfcmanager

class PresencaOrientacao {
	Date data
	String observacao
	
	static belongsTo = [tfc:TFC]

    static constraints = {
		data(blank:false, nullable:false)
		observacao(blank:false, minSize:4, maxSize:25)
    }
}
