package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProfessorController {
	
	def professorService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Professor.list(params), model:[professorInstanceCount: Professor.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(Professor professorInstance) {
        respond professorInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new Professor(params)
    }
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		def professorList = professorService.list(params)
		def professorCount = professorService.count()
 
		[professorInstanceList: professorList, professorInstanceTotal: professorCount]
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def filter() {
		def professorList = Professor.findAllByNomeLike("%${params.pesquisa}%")
		
		render view: "index", model: [professorInstanceList: professorList, professorInstanceTotal: professorList.size()]
	}


    @Transactional
	@Secured(['ROLE_ADMIN'])
    def save(Professor professorInstance) {
        if (professorInstance == null) {
            notFound()
            return
        }

        if (professorInstance.hasErrors()) {
            respond professorInstance.errors, view:'create'
            return
        }

        professorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'professor.label', default: 'Professor'), professorInstance.id])
                redirect professorInstance
            }
            '*' { respond professorInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    def edit(Professor professorInstance) {
        respond professorInstance
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def update(Professor professorInstance) {
        if (professorInstance == null) {
            notFound()
            return
        }

        if (professorInstance.hasErrors()) {
            respond professorInstance.errors, view:'edit'
            return
        }

        professorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Professor.label', default: 'Professor'), professorInstance.id])
                redirect professorInstance
            }
            '*'{ respond professorInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def delete(Professor professorInstance) {

        if (professorInstance == null) {
            notFound()
            return
        }

        professorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Professor.label', default: 'Professor'), professorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'professor.label', default: 'Professor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
