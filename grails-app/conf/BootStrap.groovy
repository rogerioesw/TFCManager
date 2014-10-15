import tfcmanager.Papel
import tfcmanager.Usuario
import tfcmanager.UsuarioPapel

class BootStrap {

    def init = { servletContext ->
		def UsuarioPapel = new UsuarioPapel()
		def papelUser = Papel.findByAuthority('ROLE_USER') ?: new Papel(authority: 'ROLE_USER').save(failOnError: true)
		def papelAdmin = Papel.findByAuthority('ROLE_ADMIN') ?: new Papel(authority: 'ROLE_ADMIN').save(failOnError: true)
		def admin = Usuario.findByUsername('admin') ?: new Usuario(
			username: 'admin',
			password: 'admin',
			enabled: true).save(failOnError: true)
		if (!admin.authorities.contains(papelAdmin)) {
			UsuarioPapel.create admin, papelAdmin
		}
		def user = Usuario.findByUsername('user') ?: new Usuario(
			username: 'user',
			password: 'user',
			enabled: true).save(failOnError: true)
		if (!user.authorities.contains(papelUser)) {
			UsuarioPapel.create user, papelUser
		}
    }
    def destroy = {
    }
}
