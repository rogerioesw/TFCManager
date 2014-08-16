package tfcmanager

class ProjetoOrientacao {
	String tema
	String situacao
	String observacao
	
	static hasMany = [documentos : Documentos, usuarios : Usuario, tfc : TFC]
	
	public String toString() {
		this.tema
	}

    static constraints = {
		tema(blank:false, minSize:8, maxSize:80)
		situacao(blank:false, minSize:5, maxSize:10)
		observacao(blank:false, maxSize:120)
    }
}
