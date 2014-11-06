package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class MemorandoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Memorando.list(params), model:[memorandoInstanceCount: Memorando.count()]
    }

    def show(Memorando memorandoInstance) {
        respond memorandoInstance
    }

    def create() {
        respond new Memorando(params)
    }

    @Transactional
    def save(Memorando memorandoInstance) {
        if (memorandoInstance == null) {
            notFound()
            return
        }

        if (memorandoInstance.hasErrors()) {
            respond memorandoInstance.errors, view:'create'
            return
        }

        memorandoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'memorando.label', default: 'Memorando'), memorandoInstance.id])
                redirect memorandoInstance
            }
            '*' { respond memorandoInstance, [status: CREATED] }
        }
    }

    def edit(Memorando memorandoInstance) {
        respond memorandoInstance
    }

    @Transactional
    def update(Memorando memorandoInstance) {
        if (memorandoInstance == null) {
            notFound()
            return
        }

        if (memorandoInstance.hasErrors()) {
            respond memorandoInstance.errors, view:'edit'
            return
        }

        memorandoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Memorando.label', default: 'Memorando'), memorandoInstance.id])
                redirect memorandoInstance
            }
            '*'{ respond memorandoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Memorando memorandoInstance) {

        if (memorandoInstance == null) {
            notFound()
            return
        }

        memorandoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Memorando.label', default: 'Memorando'), memorandoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'memorando.label', default: 'Memorando'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
