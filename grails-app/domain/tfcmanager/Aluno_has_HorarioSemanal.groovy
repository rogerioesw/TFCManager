package tfcmanager

class Aluno_has_HorarioSemanal {
	
	String semestre
	Aluno aluno
	HorarioSemanal horario
	

    static constraints = {
		semestre(blank:false, minSize:6, maxSize:6, matches:"^([1-9][0-9][0-9][0-9])/([1]|[2])")
    }
}
