package tfcmanager

class Aluno_has_HorarioSemanal {
	
	String semestre
	
	static belongsTo = [aluno:Aluno, horario:HorarioSemanal]
	

    static constraints = {
    }
}
