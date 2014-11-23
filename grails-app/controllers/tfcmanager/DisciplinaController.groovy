package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class DisciplinaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Disciplina.list(params), model:[disciplinaInstanceCount: Disciplina.count()]
    }

    def show(Disciplina disciplinaInstance) {
        respond disciplinaInstance
    }

    def create() {
        respond new Disciplina(params)
    }

    @Transactional
    def save(Disciplina disciplinaInstance) {
        if (disciplinaInstance == null) {
            notFound()
            return
        }

        if (disciplinaInstance.hasErrors()) {
            respond disciplinaInstance.errors, view:'create'
            return
        }

        disciplinaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'disciplina.label', default: 'Disciplina'), disciplinaInstance.id])
                redirect disciplinaInstance
            }
            '*' { respond disciplinaInstance, [status: CREATED] }
        }
    }

    def edit(Disciplina disciplinaInstance) {
        respond disciplinaInstance
    }

    @Transactional
    def update(Disciplina disciplinaInstance) {
        if (disciplinaInstance == null) {
            notFound()
            return
        }

        if (disciplinaInstance.hasErrors()) {
            respond disciplinaInstance.errors, view:'edit'
            return
        }

        disciplinaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Disciplina.label', default: 'Disciplina'), disciplinaInstance.id])
                redirect disciplinaInstance
            }
            '*'{ respond disciplinaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Disciplina disciplinaInstance) {

        if (disciplinaInstance == null) {
            notFound()
            return
        }

        disciplinaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Disciplina.label', default: 'Disciplina'), disciplinaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'disciplina.label', default: 'Disciplina'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
