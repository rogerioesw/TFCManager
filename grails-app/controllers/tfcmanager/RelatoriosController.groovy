package tfcmanager

import grails.plugin.jyoshiriro.jasperResponse.renderers.Jasper

class RelatoriosController {

    def index() { }
	
	def report() {
		params.jasperForceDownload=true
		params.jasperDownloadName='Anexo0'
		render params as Jasper
	}
}
