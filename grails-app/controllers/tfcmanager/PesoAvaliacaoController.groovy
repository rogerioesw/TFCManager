package tfcmanager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PesoAvaliacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PesoAvaliacao.list(params), model:[pesoAvaliacaoInstanceCount: PesoAvaliacao.count()]
    }

    def show(PesoAvaliacao pesoAvaliacaoInstance) {
        respond pesoAvaliacaoInstance
    }

    def create() {
        respond new PesoAvaliacao(params)
    }

    @Transactional
    def save(PesoAvaliacao pesoAvaliacaoInstance) {
        if (pesoAvaliacaoInstance == null) {
            notFound()
            return
        }

        if (pesoAvaliacaoInstance.hasErrors()) {
            respond pesoAvaliacaoInstance.errors, view:'create'
            return
        }

        pesoAvaliacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pesoAvaliacao.label', default: 'PesoAvaliacao'), pesoAvaliacaoInstance.id])
                redirect pesoAvaliacaoInstance
            }
            '*' { respond pesoAvaliacaoInstance, [status: CREATED] }
        }
    }

    def edit(PesoAvaliacao pesoAvaliacaoInstance) {
        respond pesoAvaliacaoInstance
    }

    @Transactional
    def update(PesoAvaliacao pesoAvaliacaoInstance) {
        if (pesoAvaliacaoInstance == null) {
            notFound()
            return
        }

        if (pesoAvaliacaoInstance.hasErrors()) {
            respond pesoAvaliacaoInstance.errors, view:'edit'
            return
        }

        pesoAvaliacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PesoAvaliacao.label', default: 'PesoAvaliacao'), pesoAvaliacaoInstance.id])
                redirect pesoAvaliacaoInstance
            }
            '*'{ respond pesoAvaliacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PesoAvaliacao pesoAvaliacaoInstance) {

        if (pesoAvaliacaoInstance == null) {
            notFound()
            return
        }

        pesoAvaliacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PesoAvaliacao.label', default: 'PesoAvaliacao'), pesoAvaliacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pesoAvaliacao.label', default: 'PesoAvaliacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
