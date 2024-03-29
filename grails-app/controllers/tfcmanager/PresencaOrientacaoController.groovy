package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PresencaOrientacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PresencaOrientacao.list(params), model:[presencaOrientacaoInstanceCount: PresencaOrientacao.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(PresencaOrientacao presencaOrientacaoInstance) {
        respond presencaOrientacaoInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new PresencaOrientacao(params)
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def save(PresencaOrientacao presencaOrientacaoInstance) {
        if (presencaOrientacaoInstance == null) {
            notFound()
            return
        }

        if (presencaOrientacaoInstance.hasErrors()) {
            respond presencaOrientacaoInstance.errors, view:'create'
            return
        }

        presencaOrientacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'presencaOrientacao.label', default: 'PresencaOrientacao'), presencaOrientacaoInstance.id])
                redirect presencaOrientacaoInstance
            }
            '*' { respond presencaOrientacaoInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    def edit(PresencaOrientacao presencaOrientacaoInstance) {
        respond presencaOrientacaoInstance
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def update(PresencaOrientacao presencaOrientacaoInstance) {
        if (presencaOrientacaoInstance == null) {
            notFound()
            return
        }

        if (presencaOrientacaoInstance.hasErrors()) {
            respond presencaOrientacaoInstance.errors, view:'edit'
            return
        }

        presencaOrientacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PresencaOrientacao.label', default: 'PresencaOrientacao'), presencaOrientacaoInstance.id])
                redirect presencaOrientacaoInstance
            }
            '*'{ respond presencaOrientacaoInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def delete(PresencaOrientacao presencaOrientacaoInstance) {

        if (presencaOrientacaoInstance == null) {
            notFound()
            return
        }

        presencaOrientacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PresencaOrientacao.label', default: 'PresencaOrientacao'), presencaOrientacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'presencaOrientacao.label', default: 'PresencaOrientacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
