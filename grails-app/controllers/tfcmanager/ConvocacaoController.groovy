package tfcmanager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConvocacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Convocacao.list(params), model:[convocacaoInstanceCount: Convocacao.count()]
    }

    def show(Convocacao convocacaoInstance) {
        respond convocacaoInstance
    }

    def create() {
        respond new Convocacao(params)
    }

    @Transactional
    def save(Convocacao convocacaoInstance) {
        if (convocacaoInstance == null) {
            notFound()
            return
        }

        if (convocacaoInstance.hasErrors()) {
            respond convocacaoInstance.errors, view:'create'
            return
        }

        convocacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'convocacao.label', default: 'Convocacao'), convocacaoInstance.id])
                redirect convocacaoInstance
            }
            '*' { respond convocacaoInstance, [status: CREATED] }
        }
    }

    def edit(Convocacao convocacaoInstance) {
        respond convocacaoInstance
    }

    @Transactional
    def update(Convocacao convocacaoInstance) {
        if (convocacaoInstance == null) {
            notFound()
            return
        }

        if (convocacaoInstance.hasErrors()) {
            respond convocacaoInstance.errors, view:'edit'
            return
        }

        convocacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Convocacao.label', default: 'Convocacao'), convocacaoInstance.id])
                redirect convocacaoInstance
            }
            '*'{ respond convocacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Convocacao convocacaoInstance) {

        if (convocacaoInstance == null) {
            notFound()
            return
        }

        convocacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Convocacao.label', default: 'Convocacao'), convocacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'convocacao.label', default: 'Convocacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
