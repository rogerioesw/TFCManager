package tfcmanager

class Faculdade {
	String nome
	
	static hasMany = [professor:Professor, aluno:Aluno]

    static constraints = {
		nome(blank:false, minSize:5, maxSize:20)
    }
	
	public String toString() {
		this.nome
	}
}
