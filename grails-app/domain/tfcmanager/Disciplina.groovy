package tfcmanager

class Disciplina {
	String nome
	String status
	
	static hasMany = [tfc : TFC]

    static constraints = {
    }
}
