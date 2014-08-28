package tfcmanager

class Aluno {
	String nome
	String email
	
	static belongsTo = [faculdade:Faculdade]
	
	static hasMany = [alunohasHorario : Aluno_has_HorarioSemanal]

    static constraints = {
		nome(blank:false, maxSize:40, minSize:10)
		email(blank:false, email:true)
    }
}
