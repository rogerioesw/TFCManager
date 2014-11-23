package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TFCController {
	
	def TFCService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TFC.list(params), model:[TFCInstanceCount: TFC.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(TFC TFCInstance) {
        respond TFCInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new TFC(params)
    }
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		def TFCList = TFCService.list(params)
		def TFCCount = TFCService.count()
 
		[TFCInstanceList: TFCList, TFCInstanceTotal: TFCCount]
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def filter() {
		def TFCList = TFC.findAllByProjetoLike("%${params.pesquisa}%")
		
		render view: "index", model: [TFCInstanceList: TFCList, TFCInstanceTotal: TFCList.size()]
	}


    @Transactional
	@Secured(['ROLE_ADMIN'])
    def save(TFC TFCInstance) {
        if (TFCInstance == null) {
            notFound()
            return
        }

        if (TFCInstance.hasErrors()) {
            respond TFCInstance.errors, view:'create'
            return
        }

        TFCInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'TFC.label', default: 'TFC'), TFCInstance.id])
                redirect TFCInstance
            }
            '*' { respond TFCInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    def edit(TFC TFCInstance) {
        respond TFCInstance
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def update(TFC TFCInstance) {
        if (TFCInstance == null) {
            notFound()
            return
        }

        if (TFCInstance.hasErrors()) {
            respond TFCInstance.errors, view:'edit'
            return
        }

        TFCInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TFC.label', default: 'TFC'), TFCInstance.id])
                redirect TFCInstance
            }
            '*'{ respond TFCInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def delete(TFC TFCInstance) {

        if (TFCInstance == null) {
            notFound()
            return
        }

        TFCInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TFC.label', default: 'TFC'), TFCInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'TFC.label', default: 'TFC'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
