package tfcmanager

class Documentos {
	String descricao
	byte[] arquivo
	
	static belongsTo = [projetoorientacao:ProjetoOrientacao]

    static constraints = {
		descricao(blank:false, maxSize:80, minSize:4)
		arquivo(blank:false, nullable:false, minSize:4, maxSize:16777215)
    }
}
