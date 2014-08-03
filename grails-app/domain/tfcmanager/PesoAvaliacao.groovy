package tfcmanager

class PesoAvaliacao {
	String descricao
	int percentual
	
	static hasMany = [tfc : TFC]
	static belongsTo = TFC

    static constraints = {
    }
}
