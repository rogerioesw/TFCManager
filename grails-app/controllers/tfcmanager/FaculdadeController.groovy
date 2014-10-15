package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FaculdadeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Faculdade.list(params), model:[faculdadeInstanceCount: Faculdade.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(Faculdade faculdadeInstance) {
        respond faculdadeInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new Faculdade(params)
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def save(Faculdade faculdadeInstance) {
        if (faculdadeInstance == null) {
            notFound()
            return
        }

        if (faculdadeInstance.hasErrors()) {
            respond faculdadeInstance.errors, view:'create'
            return
        }

        faculdadeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'faculdade.label', default: 'Faculdade'), faculdadeInstance.id])
                redirect faculdadeInstance
            }
            '*' { respond faculdadeInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    def edit(Faculdade faculdadeInstance) {
        respond faculdadeInstance
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def update(Faculdade faculdadeInstance) {
        if (faculdadeInstance == null) {
            notFound()
            return
        }

        if (faculdadeInstance.hasErrors()) {
            respond faculdadeInstance.errors, view:'edit'
            return
        }

        faculdadeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Faculdade.label', default: 'Faculdade'), faculdadeInstance.id])
                redirect faculdadeInstance
            }
            '*'{ respond faculdadeInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def delete(Faculdade faculdadeInstance) {

        if (faculdadeInstance == null) {
            notFound()
            return
        }

        faculdadeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Faculdade.label', default: 'Faculdade'), faculdadeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'faculdade.label', default: 'Faculdade'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
