package tfcmanager

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER','ROLE_ADMIN'])
class Anexo11Controller {

    def index() { }
}
