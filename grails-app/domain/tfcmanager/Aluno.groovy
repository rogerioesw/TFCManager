package tfcmanager

class Aluno {
	String nome
	String email
	Faculdade faculdade
	
	static hasMany = [alunohasHorario : Aluno_has_HorarioSemanal, tfc : TFC]
	static belongsTo = TFC
	
    static constraints = {
		nome(blank:false, maxSize:40, minSize:10)
		email(blank:false, email:true)
    }
	
	String toString() {
		nome
	}
}
