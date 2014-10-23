package tfcmanager

import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.jyoshiriro.jasperResponse.renderers.Jasper
import org.xhtmlrenderer.pdf.ITextRenderer

class RelatoriosController {

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index() { }
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo0() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo0'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo1() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo1'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo2() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo2'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo3() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo3'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo4() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo4'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo5() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo5'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo6() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo6'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo7() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo7'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo8() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo8'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo9() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo9'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo10() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo10'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo11() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo11'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo12() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo12'
		render params as Jasper
	}
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def anexo121() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo121'
		render params as Jasper
	}
}
