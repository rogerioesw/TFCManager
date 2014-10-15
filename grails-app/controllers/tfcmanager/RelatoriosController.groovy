package tfcmanager

import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.jyoshiriro.jasperResponse.renderers.Jasper

class RelatoriosController {

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index() { }
	
	@Secured(['ROLE_USER','ROLE_ADMIN'])
	def report() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo0'
		render params as Jasper
	}
}
