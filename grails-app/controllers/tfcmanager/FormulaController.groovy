package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class FormulaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Formula.list(params), model:[formulaInstanceCount: Formula.count()]
    }

    def show(Formula formulaInstance) {
        respond formulaInstance
    }

    def create() {
        respond new Formula(params)
    }

    @Transactional
    def save(Formula formulaInstance) {
        if (formulaInstance == null) {
            notFound()
            return
        }

        if (formulaInstance.hasErrors()) {
            respond formulaInstance.errors, view:'create'
            return
        }

        formulaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formula.label', default: 'Formula'), formulaInstance.id])
                redirect formulaInstance
            }
            '*' { respond formulaInstance, [status: CREATED] }
        }
    }

    def edit(Formula formulaInstance) {
        respond formulaInstance
    }

    @Transactional
    def update(Formula formulaInstance) {
        if (formulaInstance == null) {
            notFound()
            return
        }

        if (formulaInstance.hasErrors()) {
            respond formulaInstance.errors, view:'edit'
            return
        }

        formulaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Formula.label', default: 'Formula'), formulaInstance.id])
                redirect formulaInstance
            }
            '*'{ respond formulaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Formula formulaInstance) {

        if (formulaInstance == null) {
            notFound()
            return
        }

        formulaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Formula.label', default: 'Formula'), formulaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formula.label', default: 'Formula'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
