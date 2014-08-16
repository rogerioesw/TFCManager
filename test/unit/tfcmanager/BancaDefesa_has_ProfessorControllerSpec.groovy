package tfcmanager



import grails.test.mixin.*
import spock.lang.*

@TestFor(BancaDefesa_has_ProfessorController)
@Mock(BancaDefesa_has_Professor)
class BancaDefesa_has_ProfessorControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.bancaDefesa_has_ProfessorInstanceList
            model.bancaDefesa_has_ProfessorInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.bancaDefesa_has_ProfessorInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def bancaDefesa_has_Professor = new BancaDefesa_has_Professor()
            bancaDefesa_has_Professor.validate()
            controller.save(bancaDefesa_has_Professor)

        then:"The create view is rendered again with the correct model"
            model.bancaDefesa_has_ProfessorInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            bancaDefesa_has_Professor = new BancaDefesa_has_Professor(params)

            controller.save(bancaDefesa_has_Professor)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/bancaDefesa_has_Professor/show/1'
            controller.flash.message != null
            BancaDefesa_has_Professor.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def bancaDefesa_has_Professor = new BancaDefesa_has_Professor(params)
            controller.show(bancaDefesa_has_Professor)

        then:"A model is populated containing the domain instance"
            model.bancaDefesa_has_ProfessorInstance == bancaDefesa_has_Professor
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def bancaDefesa_has_Professor = new BancaDefesa_has_Professor(params)
            controller.edit(bancaDefesa_has_Professor)

        then:"A model is populated containing the domain instance"
            model.bancaDefesa_has_ProfessorInstance == bancaDefesa_has_Professor
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/bancaDefesa_has_Professor/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def bancaDefesa_has_Professor = new BancaDefesa_has_Professor()
            bancaDefesa_has_Professor.validate()
            controller.update(bancaDefesa_has_Professor)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.bancaDefesa_has_ProfessorInstance == bancaDefesa_has_Professor

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            bancaDefesa_has_Professor = new BancaDefesa_has_Professor(params).save(flush: true)
            controller.update(bancaDefesa_has_Professor)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/bancaDefesa_has_Professor/show/$bancaDefesa_has_Professor.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/bancaDefesa_has_Professor/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def bancaDefesa_has_Professor = new BancaDefesa_has_Professor(params).save(flush: true)

        then:"It exists"
            BancaDefesa_has_Professor.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(bancaDefesa_has_Professor)

        then:"The instance is deleted"
            BancaDefesa_has_Professor.count() == 0
            response.redirectedUrl == '/bancaDefesa_has_Professor/index'
            flash.message != null
    }
}
