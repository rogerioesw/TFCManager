package tfcmanager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PesoAvaliacao_has_TFCController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PesoAvaliacao_has_TFC.list(params), model:[pesoAvaliacao_has_TFCInstanceCount: PesoAvaliacao_has_TFC.count()]
    }

    def show(PesoAvaliacao_has_TFC pesoAvaliacao_has_TFCInstance) {
        respond pesoAvaliacao_has_TFCInstance
    }

    def create() {
        respond new PesoAvaliacao_has_TFC(params)
    }

    @Transactional
    def save(PesoAvaliacao_has_TFC pesoAvaliacao_has_TFCInstance) {
        if (pesoAvaliacao_has_TFCInstance == null) {
            notFound()
            return
        }

        if (pesoAvaliacao_has_TFCInstance.hasErrors()) {
            respond pesoAvaliacao_has_TFCInstance.errors, view:'create'
            return
        }

        pesoAvaliacao_has_TFCInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pesoAvaliacao_has_TFC.label', default: 'PesoAvaliacao_has_TFC'), pesoAvaliacao_has_TFCInstance.id])
                redirect pesoAvaliacao_has_TFCInstance
            }
            '*' { respond pesoAvaliacao_has_TFCInstance, [status: CREATED] }
        }
    }

    def edit(PesoAvaliacao_has_TFC pesoAvaliacao_has_TFCInstance) {
        respond pesoAvaliacao_has_TFCInstance
    }

    @Transactional
    def update(PesoAvaliacao_has_TFC pesoAvaliacao_has_TFCInstance) {
        if (pesoAvaliacao_has_TFCInstance == null) {
            notFound()
            return
        }

        if (pesoAvaliacao_has_TFCInstance.hasErrors()) {
            respond pesoAvaliacao_has_TFCInstance.errors, view:'edit'
            return
        }

        pesoAvaliacao_has_TFCInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PesoAvaliacao_has_TFC.label', default: 'PesoAvaliacao_has_TFC'), pesoAvaliacao_has_TFCInstance.id])
                redirect pesoAvaliacao_has_TFCInstance
            }
            '*'{ respond pesoAvaliacao_has_TFCInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PesoAvaliacao_has_TFC pesoAvaliacao_has_TFCInstance) {

        if (pesoAvaliacao_has_TFCInstance == null) {
            notFound()
            return
        }

        pesoAvaliacao_has_TFCInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PesoAvaliacao_has_TFC.label', default: 'PesoAvaliacao_has_TFC'), pesoAvaliacao_has_TFCInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pesoAvaliacao_has_TFC.label', default: 'PesoAvaliacao_has_TFC'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
