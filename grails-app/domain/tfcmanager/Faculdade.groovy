package tfcmanager

class Faculdade {
	String nome
	
	static hasMany = [aluno:Aluno]

    static constraints = {
		nome(blank:false, minSize:5, maxSize:20)
    }
}
