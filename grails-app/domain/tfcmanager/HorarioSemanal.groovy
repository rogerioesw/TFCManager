package tfcmanager

class HorarioSemanal {
	String diasemana
	String horario
	
	static hasMany = [tfc : TFC, alunohasHorario : Aluno_has_HorarioSemanal, 
		professorhasHorario : Professor_has_HorarioSemanal]

    static constraints = {
    }
}
