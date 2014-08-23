package tfcmanager

class Aluno {
	String nome
	String email
	
	static belongsTo = Faculdade
	
	static hasMany = [alunohasHorario : Aluno_has_HorarioSemanal]

    static constraints = {
    }
}
