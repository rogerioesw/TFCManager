package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SeminarioController {
	
	def seminarioService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Seminario.list(params), model:[seminarioInstanceCount: Seminario.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(Seminario seminarioInstance) {
        respond seminarioInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new Seminario(params)
    }
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		def seminarioList = seminarioService.list(params)
		def seminarioCount = seminarioService.count()
 
		[seminarioInstanceList: seminarioList, seminarioInstanceTotal: seminarioCount]
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def filter() {
		def seminarioList = Seminario.findAllByObservacaoLike("%${params.pesquisa}%")
		
		render view: "index", model: [seminarioInstanceList: seminarioList, seminarioInstanceTotal: seminarioList.size()]
	}


    @Transactional
	@Secured(['ROLE_ADMIN'])
    def save(Seminario seminarioInstance) {
        if (seminarioInstance == null) {
            notFound()
            return
        }

        if (seminarioInstance.hasErrors()) {
            respond seminarioInstance.errors, view:'create'
            return
        }

        seminarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'seminario.label', default: 'Seminario'), seminarioInstance.id])
                redirect seminarioInstance
            }
            '*' { respond seminarioInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    def edit(Seminario seminarioInstance) {
        respond seminarioInstance
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def update(Seminario seminarioInstance) {
        if (seminarioInstance == null) {
            notFound()
            return
        }

        if (seminarioInstance.hasErrors()) {
            respond seminarioInstance.errors, view:'edit'
            return
        }

        seminarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Seminario.label', default: 'Seminario'), seminarioInstance.id])
                redirect seminarioInstance
            }
            '*'{ respond seminarioInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def delete(Seminario seminarioInstance) {

        if (seminarioInstance == null) {
            notFound()
            return
        }

        seminarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Seminario.label', default: 'Seminario'), seminarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'seminario.label', default: 'Seminario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
