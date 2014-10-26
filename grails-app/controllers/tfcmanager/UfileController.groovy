package tfcmanager

import com.lucastex.grails.fileuploader.UFile
import grails.plugin.springsecurity.annotation.Secured

class UfileController {
	
	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) { 
		params.max = Math.min(max ?: 10, 100)
        //respond Disciplina.list(params), model:[disciplinaInstanceCount: Disciplina.count()]
		respond UFile.list(params), model:[arquivos: UFile.list(), params:params]
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def delete() {
		def ufile = UFile.get(params.id)
		ufile.delete()
		redirect action:index
	}
}
