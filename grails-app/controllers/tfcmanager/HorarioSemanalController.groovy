package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HorarioSemanalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond HorarioSemanal.list(params), model:[horarioSemanalInstanceCount: HorarioSemanal.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(HorarioSemanal horarioSemanalInstance) {
        respond horarioSemanalInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new HorarioSemanal(params)
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def save(HorarioSemanal horarioSemanalInstance) {
        if (horarioSemanalInstance == null) {
            notFound()
            return
        }

        if (horarioSemanalInstance.hasErrors()) {
            respond horarioSemanalInstance.errors, view:'create'
            return
        }

        horarioSemanalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'horarioSemanal.label', default: 'HorarioSemanal'), horarioSemanalInstance.id])
                redirect horarioSemanalInstance
            }
            '*' { respond horarioSemanalInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    def edit(HorarioSemanal horarioSemanalInstance) {
        respond horarioSemanalInstance
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def update(HorarioSemanal horarioSemanalInstance) {
        if (horarioSemanalInstance == null) {
            notFound()
            return
        }

        if (horarioSemanalInstance.hasErrors()) {
            respond horarioSemanalInstance.errors, view:'edit'
            return
        }

        horarioSemanalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'HorarioSemanal.label', default: 'HorarioSemanal'), horarioSemanalInstance.id])
                redirect horarioSemanalInstance
            }
            '*'{ respond horarioSemanalInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def delete(HorarioSemanal horarioSemanalInstance) {

        if (horarioSemanalInstance == null) {
            notFound()
            return
        }

        horarioSemanalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'HorarioSemanal.label', default: 'HorarioSemanal'), horarioSemanalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'horarioSemanal.label', default: 'HorarioSemanal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
