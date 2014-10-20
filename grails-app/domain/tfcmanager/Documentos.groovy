package tfcmanager

class Documentos {
	String descricao
	byte[] arquivo
	ProjetoOrientacao projetoorientacao

    static constraints = {
		descricao(blank:false, maxSize:80, minSize:4)
		arquivo(blank:false, nullable:false, minSize:4, maxSize:50777215)
    }
}
