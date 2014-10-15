package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BancaDefesa_has_ProfessorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BancaDefesa_has_Professor.list(params), model:[bancaDefesa_has_ProfessorInstanceCount: BancaDefesa_has_Professor.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(BancaDefesa_has_Professor bancaDefesa_has_ProfessorInstance) {
        respond bancaDefesa_has_ProfessorInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new BancaDefesa_has_Professor(params)
    }

    @Transactional
    def save(BancaDefesa_has_Professor bancaDefesa_has_ProfessorInstance) {
        if (bancaDefesa_has_ProfessorInstance == null) {
            notFound()
            return
        }

        if (bancaDefesa_has_ProfessorInstance.hasErrors()) {
            respond bancaDefesa_has_ProfessorInstance.errors, view:'create'
            return
        }

        bancaDefesa_has_ProfessorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'bancaDefesa_has_Professor.label', default: 'BancaDefesa_has_Professor'), bancaDefesa_has_ProfessorInstance.id])
                redirect bancaDefesa_has_ProfessorInstance
            }
            '*' { respond bancaDefesa_has_ProfessorInstance, [status: CREATED] }
        }
    }

    def edit(BancaDefesa_has_Professor bancaDefesa_has_ProfessorInstance) {
        respond bancaDefesa_has_ProfessorInstance
    }

    @Transactional
    def update(BancaDefesa_has_Professor bancaDefesa_has_ProfessorInstance) {
        if (bancaDefesa_has_ProfessorInstance == null) {
            notFound()
            return
        }

        if (bancaDefesa_has_ProfessorInstance.hasErrors()) {
            respond bancaDefesa_has_ProfessorInstance.errors, view:'edit'
            return
        }

        bancaDefesa_has_ProfessorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BancaDefesa_has_Professor.label', default: 'BancaDefesa_has_Professor'), bancaDefesa_has_ProfessorInstance.id])
                redirect bancaDefesa_has_ProfessorInstance
            }
            '*'{ respond bancaDefesa_has_ProfessorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BancaDefesa_has_Professor bancaDefesa_has_ProfessorInstance) {

        if (bancaDefesa_has_ProfessorInstance == null) {
            notFound()
            return
        }

        bancaDefesa_has_ProfessorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BancaDefesa_has_Professor.label', default: 'BancaDefesa_has_Professor'), bancaDefesa_has_ProfessorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'bancaDefesa_has_Professor.label', default: 'BancaDefesa_has_Professor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
