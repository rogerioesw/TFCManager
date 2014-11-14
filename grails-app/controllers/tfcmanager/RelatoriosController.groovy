package tfcmanager

import tfcmanager.Aluno
import tfcmanager.TFC
import tfcmanager.Professor
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.jyoshiriro.jasperResponse.renderers.Jasper

import org.xhtmlrenderer.pdf.ITextRenderer

class RelatoriosController {
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index() { }
	
	
	/*@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo0() {
		params.id_professor = params.${professor_nome}
		//params.jasperParams = true
		//params.jasperParams("0", "${params.professor_nome}")
		render params as Jasper	
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo0() {
		//params.jasperForceDownload=true
		params.jasperDownloadName='Anexo0'
		params.jasperParams=true
		//params.jasperParams("nome_parametro","valor")
		render params as Jasper
	}*/
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo1() {
		params.jasperDownloadName='Anexo1'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo2() {
		params.jasperDownloadName='Anexo2'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo3() {
		params.jasperDownloadName='Anexo3'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo4() {
		params.jasperDownloadName='Anexo4'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo5() {
		params.jasperDownloadName='Anexo5'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo6() {
		params.jasperDownloadName='Anexo6'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo7() {
		params.jasperDownloadName='Anexo7'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo8() {
		params.jasperDownloadName='Anexo8'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo9() {
		params.jasperDownloadName='Anexo9'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo10() {
		params.jasperDownloadName='Anexo10'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo11() {
		params.jasperDownloadName='Anexo11'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo12() {
		params.jasperDownloadName='Anexo12'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo121() {
		params.jasperDownloadName='Anexo121'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo22() {
		params.jasperDownloadName='Anexo22'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo32() {
		params.jasperDownloadName='Anexo32'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo35() {
		params.jasperDownloadName='Anexo35'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo36() {
		params.jasperDownloadName='Anexo36'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo37() {
		params.jasperDownloadName='Anexo37'
		render params as Jasper
	}
}
