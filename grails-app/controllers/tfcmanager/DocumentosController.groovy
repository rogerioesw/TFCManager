package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DocumentosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Documentos.list(params), model:[documentosInstanceCount: Documentos.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(Documentos documentosInstance) {
        respond documentosInstance
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def create() {
        respond new Documentos(params)
    }

    @Transactional
	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def save(Documentos documentosInstance) {
        if (documentosInstance == null) {
            notFound()
            return
        }

        if (documentosInstance.hasErrors()) {
            respond documentosInstance.errors, view:'create'
            return
        }

        documentosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'documentos.label', default: 'Documentos'), documentosInstance.id])
                redirect documentosInstance
            }
            '*' { respond documentosInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def edit(Documentos documentosInstance) {
        respond documentosInstance
    }

    @Transactional
	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def update(Documentos documentosInstance) {
        if (documentosInstance == null) {
            notFound()
            return
        }

        if (documentosInstance.hasErrors()) {
            respond documentosInstance.errors, view:'edit'
            return
        }

        documentosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Documentos.label', default: 'Documentos'), documentosInstance.id])
                redirect documentosInstance
            }
            '*'{ respond documentosInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def delete(Documentos documentosInstance) {

        if (documentosInstance == null) {
            notFound()
            return
        }

        documentosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Documentos.label', default: 'Documentos'), documentosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'documentos.label', default: 'Documentos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
