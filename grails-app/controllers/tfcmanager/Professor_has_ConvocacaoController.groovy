package tfcmanager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class Professor_has_ConvocacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Professor_has_Convocacao.list(params), model:[professor_has_ConvocacaoInstanceCount: Professor_has_Convocacao.count()]
    }

    def show(Professor_has_Convocacao professor_has_ConvocacaoInstance) {
        respond professor_has_ConvocacaoInstance
    }

    def create() {
        respond new Professor_has_Convocacao(params)
    }

    @Transactional
    def save(Professor_has_Convocacao professor_has_ConvocacaoInstance) {
        if (professor_has_ConvocacaoInstance == null) {
            notFound()
            return
        }

        if (professor_has_ConvocacaoInstance.hasErrors()) {
            respond professor_has_ConvocacaoInstance.errors, view:'create'
            return
        }

        professor_has_ConvocacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'professor_has_Convocacao.label', default: 'Professor_has_Convocacao'), professor_has_ConvocacaoInstance.id])
                redirect professor_has_ConvocacaoInstance
            }
            '*' { respond professor_has_ConvocacaoInstance, [status: CREATED] }
        }
    }

    def edit(Professor_has_Convocacao professor_has_ConvocacaoInstance) {
        respond professor_has_ConvocacaoInstance
    }

    @Transactional
    def update(Professor_has_Convocacao professor_has_ConvocacaoInstance) {
        if (professor_has_ConvocacaoInstance == null) {
            notFound()
            return
        }

        if (professor_has_ConvocacaoInstance.hasErrors()) {
            respond professor_has_ConvocacaoInstance.errors, view:'edit'
            return
        }

        professor_has_ConvocacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Professor_has_Convocacao.label', default: 'Professor_has_Convocacao'), professor_has_ConvocacaoInstance.id])
                redirect professor_has_ConvocacaoInstance
            }
            '*'{ respond professor_has_ConvocacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Professor_has_Convocacao professor_has_ConvocacaoInstance) {

        if (professor_has_ConvocacaoInstance == null) {
            notFound()
            return
        }

        professor_has_ConvocacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Professor_has_Convocacao.label', default: 'Professor_has_Convocacao'), professor_has_ConvocacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'professor_has_Convocacao.label', default: 'Professor_has_Convocacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
