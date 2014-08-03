package tfcmanager

class ProjetoOrientacao {
	String tema
	String situacao
	String observacao
	
	static hasMany = [documentos : Documentos, usuarios : Usuario, tfc : TFC]

    static constraints = {
    }
}
