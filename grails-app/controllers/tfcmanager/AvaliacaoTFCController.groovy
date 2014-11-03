package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class AvaliacaoTFCController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AvaliacaoTFC.list(params), model:[avaliacaoTFCInstanceCount: AvaliacaoTFC.count()]
    }

    def show(AvaliacaoTFC avaliacaoTFCInstance) {
        respond avaliacaoTFCInstance
    }

    def create() {
        respond new AvaliacaoTFC(params)
    }

    @Transactional
    def save(AvaliacaoTFC avaliacaoTFCInstance) {
        if (avaliacaoTFCInstance == null) {
            notFound()
            return
        }

        if (avaliacaoTFCInstance.hasErrors()) {
            respond avaliacaoTFCInstance.errors, view:'create'
            return
        }

        avaliacaoTFCInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'avaliacaoTFC.label', default: 'AvaliacaoTFC'), avaliacaoTFCInstance.id])
                redirect avaliacaoTFCInstance
            }
            '*' { respond avaliacaoTFCInstance, [status: CREATED] }
        }
    }

    def edit(AvaliacaoTFC avaliacaoTFCInstance) {
        respond avaliacaoTFCInstance
    }

    @Transactional
    def update(AvaliacaoTFC avaliacaoTFCInstance) {
        if (avaliacaoTFCInstance == null) {
            notFound()
            return
        }

        if (avaliacaoTFCInstance.hasErrors()) {
            respond avaliacaoTFCInstance.errors, view:'edit'
            return
        }

        avaliacaoTFCInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AvaliacaoTFC.label', default: 'AvaliacaoTFC'), avaliacaoTFCInstance.id])
                redirect avaliacaoTFCInstance
            }
            '*'{ respond avaliacaoTFCInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AvaliacaoTFC avaliacaoTFCInstance) {

        if (avaliacaoTFCInstance == null) {
            notFound()
            return
        }

        avaliacaoTFCInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AvaliacaoTFC.label', default: 'AvaliacaoTFC'), avaliacaoTFCInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'avaliacaoTFC.label', default: 'AvaliacaoTFC'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
