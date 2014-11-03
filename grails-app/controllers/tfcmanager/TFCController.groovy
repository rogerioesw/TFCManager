package tfcmanager


import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class TFCController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TFC.list(params), model:[TFCInstanceCount: TFC.count()]
    }

    def show(TFC TFCInstance) {
        respond TFCInstance
    }

    def create() {
        respond new TFC(params)
    }

    @Transactional
    def save(TFC TFCInstance) {
        if (TFCInstance == null) {
            notFound()
            return
        }

        if (TFCInstance.hasErrors()) {
            respond TFCInstance.errors, view:'create'
            return
        }

        TFCInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'TFC.label', default: 'TFC'), TFCInstance.id])
                redirect TFCInstance
            }
            '*' { respond TFCInstance, [status: CREATED] }
        }
    }

    def edit(TFC TFCInstance) {
        respond TFCInstance
    }

    @Transactional
    def update(TFC TFCInstance) {
        if (TFCInstance == null) {
            notFound()
            return
        }

        if (TFCInstance.hasErrors()) {
            respond TFCInstance.errors, view:'edit'
            return
        }

        TFCInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TFC.label', default: 'TFC'), TFCInstance.id])
                redirect TFCInstance
            }
            '*'{ respond TFCInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TFC TFCInstance) {

        if (TFCInstance == null) {
            notFound()
            return
        }

        TFCInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TFC.label', default: 'TFC'), TFCInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'TFC.label', default: 'TFC'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
