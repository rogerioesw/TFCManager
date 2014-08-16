package tfcmanager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BancaDefesaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BancaDefesa.list(params), model:[bancaDefesaInstanceCount: BancaDefesa.count()]
    }

    def show(BancaDefesa bancaDefesaInstance) {
        respond bancaDefesaInstance
    }

    def create() {
        respond new BancaDefesa(params)
    }

    @Transactional
    def save(BancaDefesa bancaDefesaInstance) {
        if (bancaDefesaInstance == null) {
            notFound()
            return
        }

        if (bancaDefesaInstance.hasErrors()) {
            respond bancaDefesaInstance.errors, view:'create'
            return
        }

        bancaDefesaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'bancaDefesa.label', default: 'BancaDefesa'), bancaDefesaInstance.id])
                redirect bancaDefesaInstance
            }
            '*' { respond bancaDefesaInstance, [status: CREATED] }
        }
    }

    def edit(BancaDefesa bancaDefesaInstance) {
        respond bancaDefesaInstance
    }

    @Transactional
    def update(BancaDefesa bancaDefesaInstance) {
        if (bancaDefesaInstance == null) {
            notFound()
            return
        }

        if (bancaDefesaInstance.hasErrors()) {
            respond bancaDefesaInstance.errors, view:'edit'
            return
        }

        bancaDefesaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BancaDefesa.label', default: 'BancaDefesa'), bancaDefesaInstance.id])
                redirect bancaDefesaInstance
            }
            '*'{ respond bancaDefesaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BancaDefesa bancaDefesaInstance) {

        if (bancaDefesaInstance == null) {
            notFound()
            return
        }

        bancaDefesaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BancaDefesa.label', default: 'BancaDefesa'), bancaDefesaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'bancaDefesa.label', default: 'BancaDefesa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
