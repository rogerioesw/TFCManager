package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AlunoController {
	
	def alunoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Aluno.list(params), model:[alunoInstanceCount: Aluno.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(Aluno alunoInstance) {
        respond alunoInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new Aluno(params)
    }
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		def alunoList = alunoService.list(params)
		def alunoCount = alunoService.count()
 
		[alunoInstanceList: alunoList, alunoInstanceTotal: alunoCount]
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def filter() {
		def alunoList = Aluno.findAllByNomeLike("%${params.pesquisa}%")
		
		render view: "index", model: [alunoInstanceList: alunoList, alunoInstanceTotal: alunoList.size()]
	}

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def save(Aluno alunoInstance) {
        if (alunoInstance == null) {
            notFound()
            return
        }

        if (alunoInstance.hasErrors()) {
            respond alunoInstance.errors, view:'create'
            return
        }

        alunoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'aluno.label', default: 'Aluno'), alunoInstance.id])
                redirect alunoInstance
            }
            '*' { respond alunoInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    def edit(Aluno alunoInstance) {
        respond alunoInstance
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def update(Aluno alunoInstance) {
        if (alunoInstance == null) {
            notFound()
            return
        }

        if (alunoInstance.hasErrors()) {
            respond alunoInstance.errors, view:'edit'
            return
        }

        alunoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Aluno.label', default: 'Aluno'), alunoInstance.id])
                redirect alunoInstance
            }
            '*'{ respond alunoInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured(['ROLE_ADMIN'])
    def delete(Aluno alunoInstance) {

        if (alunoInstance == null) {
            notFound()
            return
        }

        alunoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Aluno.label', default: 'Aluno'), alunoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'aluno.label', default: 'Aluno'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
