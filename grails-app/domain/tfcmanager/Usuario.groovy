package tfcmanager

class Usuario {
	String nomecompleto
	String login
	String senha
	ProjetoOrientacao projeto

    static constraints = {
		login(blank:false, maxSize:20, nullable:false, unique:true)
		nomecompleto(blank:false, maxSize:100, nullable:false)
		senha(blank:false, minSize:6, maxSize:15)
    }
}
