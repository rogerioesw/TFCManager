package tfcmanager



import grails.test.mixin.*
import spock.lang.*

@TestFor(PesoAvaliacao_has_AlunoController)
@Mock(PesoAvaliacao_has_Aluno)
class PesoAvaliacao_has_AlunoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.pesoAvaliacao_has_AlunoInstanceList
            model.pesoAvaliacao_has_AlunoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.pesoAvaliacao_has_AlunoInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def pesoAvaliacao_has_Aluno = new PesoAvaliacao_has_Aluno()
            pesoAvaliacao_has_Aluno.validate()
            controller.save(pesoAvaliacao_has_Aluno)

        then:"The create view is rendered again with the correct model"
            model.pesoAvaliacao_has_AlunoInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            pesoAvaliacao_has_Aluno = new PesoAvaliacao_has_Aluno(params)

            controller.save(pesoAvaliacao_has_Aluno)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/pesoAvaliacao_has_Aluno/show/1'
            controller.flash.message != null
            PesoAvaliacao_has_Aluno.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def pesoAvaliacao_has_Aluno = new PesoAvaliacao_has_Aluno(params)
            controller.show(pesoAvaliacao_has_Aluno)

        then:"A model is populated containing the domain instance"
            model.pesoAvaliacao_has_AlunoInstance == pesoAvaliacao_has_Aluno
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def pesoAvaliacao_has_Aluno = new PesoAvaliacao_has_Aluno(params)
            controller.edit(pesoAvaliacao_has_Aluno)

        then:"A model is populated containing the domain instance"
            model.pesoAvaliacao_has_AlunoInstance == pesoAvaliacao_has_Aluno
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/pesoAvaliacao_has_Aluno/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def pesoAvaliacao_has_Aluno = new PesoAvaliacao_has_Aluno()
            pesoAvaliacao_has_Aluno.validate()
            controller.update(pesoAvaliacao_has_Aluno)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.pesoAvaliacao_has_AlunoInstance == pesoAvaliacao_has_Aluno

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            pesoAvaliacao_has_Aluno = new PesoAvaliacao_has_Aluno(params).save(flush: true)
            controller.update(pesoAvaliacao_has_Aluno)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/pesoAvaliacao_has_Aluno/show/$pesoAvaliacao_has_Aluno.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/pesoAvaliacao_has_Aluno/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def pesoAvaliacao_has_Aluno = new PesoAvaliacao_has_Aluno(params).save(flush: true)

        then:"It exists"
            PesoAvaliacao_has_Aluno.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(pesoAvaliacao_has_Aluno)

        then:"The instance is deleted"
            PesoAvaliacao_has_Aluno.count() == 0
            response.redirectedUrl == '/pesoAvaliacao_has_Aluno/index'
            flash.message != null
    }
}
