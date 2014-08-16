package tfcmanager

class PesoAvaliacao {
	String descricao
	int percentual
	
	static hasMany = [pesohasTFC : PesoAvaliacao_has_TFC]

    static constraints = {
    }
}
