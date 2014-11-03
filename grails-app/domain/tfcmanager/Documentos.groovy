package tfcmanager

import com.lucastex.grails.fileuploader.UFile

class Documentos {
	String descricao
	//static hasMany = [arquivos: UFile]
	UFile arquivo
	TFC tfc

    static constraints = {
		descricao(blank:false, maxSize:80, minSize:4)
		arquivo(nullable:true)
    }
}
