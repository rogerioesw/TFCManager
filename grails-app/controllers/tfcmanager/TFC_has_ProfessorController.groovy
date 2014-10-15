package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TFC_has_ProfessorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TFC_has_Professor.list(params), model:[TFC_has_ProfessorInstanceCount: TFC_has_Professor.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(TFC_has_Professor TFC_has_ProfessorInstance) {
        respond TFC_has_ProfessorInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new TFC_has_Professor(params)
    }

    @Transactional
    def save(TFC_has_Professor TFC_has_ProfessorInstance) {
        if (TFC_has_ProfessorInstance == null) {
            notFound()
            return
        }

        if (TFC_has_ProfessorInstance.hasErrors()) {
            respond TFC_has_ProfessorInstance.errors, view:'create'
            return
        }

        TFC_has_ProfessorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'TFC_has_Professor.label', default: 'TFC_has_Professor'), TFC_has_ProfessorInstance.id])
                redirect TFC_has_ProfessorInstance
            }
            '*' { respond TFC_has_ProfessorInstance, [status: CREATED] }
        }
    }

    def edit(TFC_has_Professor TFC_has_ProfessorInstance) {
        respond TFC_has_ProfessorInstance
    }

    @Transactional
    def update(TFC_has_Professor TFC_has_ProfessorInstance) {
        if (TFC_has_ProfessorInstance == null) {
            notFound()
            return
        }

        if (TFC_has_ProfessorInstance.hasErrors()) {
            respond TFC_has_ProfessorInstance.errors, view:'edit'
            return
        }

        TFC_has_ProfessorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TFC_has_Professor.label', default: 'TFC_has_Professor'), TFC_has_ProfessorInstance.id])
                redirect TFC_has_ProfessorInstance
            }
            '*'{ respond TFC_has_ProfessorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TFC_has_Professor TFC_has_ProfessorInstance) {

        if (TFC_has_ProfessorInstance == null) {
            notFound()
            return
        }

        TFC_has_ProfessorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TFC_has_Professor.label', default: 'TFC_has_Professor'), TFC_has_ProfessorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'TFC_has_Professor.label', default: 'TFC_has_Professor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
