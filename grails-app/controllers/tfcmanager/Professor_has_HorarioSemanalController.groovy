package tfcmanager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class Professor_has_HorarioSemanalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Professor_has_HorarioSemanal.list(params), model:[professor_has_HorarioSemanalInstanceCount: Professor_has_HorarioSemanal.count()]
    }

    def show(Professor_has_HorarioSemanal professor_has_HorarioSemanalInstance) {
        respond professor_has_HorarioSemanalInstance
    }

    def create() {
        respond new Professor_has_HorarioSemanal(params)
    }

    @Transactional
    def save(Professor_has_HorarioSemanal professor_has_HorarioSemanalInstance) {
        if (professor_has_HorarioSemanalInstance == null) {
            notFound()
            return
        }

        if (professor_has_HorarioSemanalInstance.hasErrors()) {
            respond professor_has_HorarioSemanalInstance.errors, view:'create'
            return
        }

        professor_has_HorarioSemanalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'professor_has_HorarioSemanal.label', default: 'Professor_has_HorarioSemanal'), professor_has_HorarioSemanalInstance.id])
                redirect professor_has_HorarioSemanalInstance
            }
            '*' { respond professor_has_HorarioSemanalInstance, [status: CREATED] }
        }
    }

    def edit(Professor_has_HorarioSemanal professor_has_HorarioSemanalInstance) {
        respond professor_has_HorarioSemanalInstance
    }

    @Transactional
    def update(Professor_has_HorarioSemanal professor_has_HorarioSemanalInstance) {
        if (professor_has_HorarioSemanalInstance == null) {
            notFound()
            return
        }

        if (professor_has_HorarioSemanalInstance.hasErrors()) {
            respond professor_has_HorarioSemanalInstance.errors, view:'edit'
            return
        }

        professor_has_HorarioSemanalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Professor_has_HorarioSemanal.label', default: 'Professor_has_HorarioSemanal'), professor_has_HorarioSemanalInstance.id])
                redirect professor_has_HorarioSemanalInstance
            }
            '*'{ respond professor_has_HorarioSemanalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Professor_has_HorarioSemanal professor_has_HorarioSemanalInstance) {

        if (professor_has_HorarioSemanalInstance == null) {
            notFound()
            return
        }

        professor_has_HorarioSemanalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Professor_has_HorarioSemanal.label', default: 'Professor_has_HorarioSemanal'), professor_has_HorarioSemanalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'professor_has_HorarioSemanal.label', default: 'Professor_has_HorarioSemanal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}