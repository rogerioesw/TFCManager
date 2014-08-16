package tfcmanager

class Aluno {
	String nome
	String email
	String faculdade
	
	static hasMany = [alunohasHorario : Aluno_has_HorarioSemanal]

    static constraints = {
    }
}
