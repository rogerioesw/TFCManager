package tfcmanager



import grails.test.mixin.*
import spock.lang.*

@TestFor(PesoAvaliacao_has_TFCController)
@Mock(PesoAvaliacao_has_TFC)
class PesoAvaliacao_has_TFCControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.pesoAvaliacao_has_TFCInstanceList
            model.pesoAvaliacao_has_TFCInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.pesoAvaliacao_has_TFCInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def pesoAvaliacao_has_TFC = new PesoAvaliacao_has_TFC()
            pesoAvaliacao_has_TFC.validate()
            controller.save(pesoAvaliacao_has_TFC)

        then:"The create view is rendered again with the correct model"
            model.pesoAvaliacao_has_TFCInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            pesoAvaliacao_has_TFC = new PesoAvaliacao_has_TFC(params)

            controller.save(pesoAvaliacao_has_TFC)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/pesoAvaliacao_has_TFC/show/1'
            controller.flash.message != null
            PesoAvaliacao_has_TFC.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def pesoAvaliacao_has_TFC = new PesoAvaliacao_has_TFC(params)
            controller.show(pesoAvaliacao_has_TFC)

        then:"A model is populated containing the domain instance"
            model.pesoAvaliacao_has_TFCInstance == pesoAvaliacao_has_TFC
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def pesoAvaliacao_has_TFC = new PesoAvaliacao_has_TFC(params)
            controller.edit(pesoAvaliacao_has_TFC)

        then:"A model is populated containing the domain instance"
            model.pesoAvaliacao_has_TFCInstance == pesoAvaliacao_has_TFC
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/pesoAvaliacao_has_TFC/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def pesoAvaliacao_has_TFC = new PesoAvaliacao_has_TFC()
            pesoAvaliacao_has_TFC.validate()
            controller.update(pesoAvaliacao_has_TFC)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.pesoAvaliacao_has_TFCInstance == pesoAvaliacao_has_TFC

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            pesoAvaliacao_has_TFC = new PesoAvaliacao_has_TFC(params).save(flush: true)
            controller.update(pesoAvaliacao_has_TFC)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/pesoAvaliacao_has_TFC/show/$pesoAvaliacao_has_TFC.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/pesoAvaliacao_has_TFC/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def pesoAvaliacao_has_TFC = new PesoAvaliacao_has_TFC(params).save(flush: true)

        then:"It exists"
            PesoAvaliacao_has_TFC.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(pesoAvaliacao_has_TFC)

        then:"The instance is deleted"
            PesoAvaliacao_has_TFC.count() == 0
            response.redirectedUrl == '/pesoAvaliacao_has_TFC/index'
            flash.message != null
    }
}
