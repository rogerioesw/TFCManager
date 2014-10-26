package tfcmanager

class Disciplina {
	String nome
	String status
	
	static hasMany = [tfc : TFC]

    static constraints = {
		nome(blank:false, minSize:4, maxSize:4)
		status(blank:false, minSize:5, maxSize:8)
    }
	
	public String toString() {
		this.nome
	}
}
