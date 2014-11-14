package tfcmanager

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER','ROLE_ADMIN'])
class Anexo4Controller {

    def index() { }
}
