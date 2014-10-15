package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PesoAvaliacao_has_AlunoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PesoAvaliacao_has_Aluno.list(params), model:[pesoAvaliacao_has_AlunoInstanceCount: PesoAvaliacao_has_Aluno.count()]
    }

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def show(PesoAvaliacao_has_Aluno pesoAvaliacao_has_AlunoInstance) {
        respond pesoAvaliacao_has_AlunoInstance
    }

	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new PesoAvaliacao_has_Aluno(params)
    }

    @Transactional
    def save(PesoAvaliacao_has_Aluno pesoAvaliacao_has_AlunoInstance) {
        if (pesoAvaliacao_has_AlunoInstance == null) {
            notFound()
            return
        }

        if (pesoAvaliacao_has_AlunoInstance.hasErrors()) {
            respond pesoAvaliacao_has_AlunoInstance.errors, view:'create'
            return
        }

        pesoAvaliacao_has_AlunoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pesoAvaliacao_has_Aluno.label', default: 'PesoAvaliacao_has_Aluno'), pesoAvaliacao_has_AlunoInstance.id])
                redirect pesoAvaliacao_has_AlunoInstance
            }
            '*' { respond pesoAvaliacao_has_AlunoInstance, [status: CREATED] }
        }
    }

    def edit(PesoAvaliacao_has_Aluno pesoAvaliacao_has_AlunoInstance) {
        respond pesoAvaliacao_has_AlunoInstance
    }

    @Transactional
    def update(PesoAvaliacao_has_Aluno pesoAvaliacao_has_AlunoInstance) {
        if (pesoAvaliacao_has_AlunoInstance == null) {
            notFound()
            return
        }

        if (pesoAvaliacao_has_AlunoInstance.hasErrors()) {
            respond pesoAvaliacao_has_AlunoInstance.errors, view:'edit'
            return
        }

        pesoAvaliacao_has_AlunoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PesoAvaliacao_has_Aluno.label', default: 'PesoAvaliacao_has_Aluno'), pesoAvaliacao_has_AlunoInstance.id])
                redirect pesoAvaliacao_has_AlunoInstance
            }
            '*'{ respond pesoAvaliacao_has_AlunoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PesoAvaliacao_has_Aluno pesoAvaliacao_has_AlunoInstance) {

        if (pesoAvaliacao_has_AlunoInstance == null) {
            notFound()
            return
        }

        pesoAvaliacao_has_AlunoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PesoAvaliacao_has_Aluno.label', default: 'PesoAvaliacao_has_Aluno'), pesoAvaliacao_has_AlunoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pesoAvaliacao_has_Aluno.label', default: 'PesoAvaliacao_has_Aluno'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
