package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class Aluno_has_HorarioSemanalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Aluno_has_HorarioSemanal.list(params), model:[aluno_has_HorarioSemanalInstanceCount: Aluno_has_HorarioSemanal.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(Aluno_has_HorarioSemanal aluno_has_HorarioSemanalInstance) {
        respond aluno_has_HorarioSemanalInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new Aluno_has_HorarioSemanal(params)
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def save(Aluno_has_HorarioSemanal aluno_has_HorarioSemanalInstance) {
        if (aluno_has_HorarioSemanalInstance == null) {
            notFound()
            return
        }

        if (aluno_has_HorarioSemanalInstance.hasErrors()) {
            respond aluno_has_HorarioSemanalInstance.errors, view:'create'
            return
        }

        aluno_has_HorarioSemanalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'aluno_has_HorarioSemanal.label', default: 'Aluno_has_HorarioSemanal'), aluno_has_HorarioSemanalInstance.id])
                redirect aluno_has_HorarioSemanalInstance
            }
            '*' { respond aluno_has_HorarioSemanalInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    def edit(Aluno_has_HorarioSemanal aluno_has_HorarioSemanalInstance) {
        respond aluno_has_HorarioSemanalInstance
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def update(Aluno_has_HorarioSemanal aluno_has_HorarioSemanalInstance) {
        if (aluno_has_HorarioSemanalInstance == null) {
            notFound()
            return
        }

        if (aluno_has_HorarioSemanalInstance.hasErrors()) {
            respond aluno_has_HorarioSemanalInstance.errors, view:'edit'
            return
        }

        aluno_has_HorarioSemanalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Aluno_has_HorarioSemanal.label', default: 'Aluno_has_HorarioSemanal'), aluno_has_HorarioSemanalInstance.id])
                redirect aluno_has_HorarioSemanalInstance
            }
            '*'{ respond aluno_has_HorarioSemanalInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def delete(Aluno_has_HorarioSemanal aluno_has_HorarioSemanalInstance) {

        if (aluno_has_HorarioSemanalInstance == null) {
            notFound()
            return
        }

        aluno_has_HorarioSemanalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Aluno_has_HorarioSemanal.label', default: 'Aluno_has_HorarioSemanal'), aluno_has_HorarioSemanalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'aluno_has_HorarioSemanal.label', default: 'Aluno_has_HorarioSemanal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
