package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioPapelController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UsuarioPapel.list(params), model:[usuarioPapelInstanceCount: UsuarioPapel.count()]
    }

	@Secured(['ROLE_ADMIN'])
    def show(UsuarioPapel usuarioPapelInstance) {
        respond usuarioPapelInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new UsuarioPapel(params)
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def save(UsuarioPapel usuarioPapelInstance) {
        if (usuarioPapelInstance == null) {
            notFound()
            return
        }

        if (usuarioPapelInstance.hasErrors()) {
            respond usuarioPapelInstance.errors, view:'create'
            return
        }

        usuarioPapelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioPapel.label', default: 'UsuarioPapel'), usuarioPapelInstance.id])
                //redirect usuarioPapelInstance
				redirect action: "index", method: "GET"
            }
            '*' { respond usuarioPapelInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    def edit(UsuarioPapel usuarioPapelInstance) {
        respond usuarioPapelInstance
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def update(UsuarioPapel usuarioPapelInstance) {
        if (usuarioPapelInstance == null) {
            notFound()
            return
        }

        if (usuarioPapelInstance.hasErrors()) {
            respond usuarioPapelInstance.errors, view:'edit'
            return
        }

        usuarioPapelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioPapel.label', default: 'UsuarioPapel'), usuarioPapelInstance.id])
                redirect usuarioPapelInstance
            }
            '*'{ respond usuarioPapelInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def delete(UsuarioPapel usuarioPapelInstance) {

        if (usuarioPapelInstance == null) {
            notFound()
            return
        }

        usuarioPapelInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioPapel.label', default: 'UsuarioPapel'), usuarioPapelInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioPapel.label', default: 'UsuarioPapel'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
