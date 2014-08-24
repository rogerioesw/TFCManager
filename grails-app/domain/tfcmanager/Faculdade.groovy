package tfcmanager

class Faculdade {
	String nome
	
	static hasMany = [aluno:Aluno]

    static constraints = {
    }
}
