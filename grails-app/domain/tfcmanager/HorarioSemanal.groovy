package tfcmanager

class HorarioSemanal {
	String diasemana
	String horario
	
	static hasMany = [tfc : TFC, alunohasHorario : Aluno_has_HorarioSemanal, 
		professorhasHorario : Professor_has_HorarioSemanal]
	
	public String toString() {
		return "${this.diasemana} - ${this.horario}"
	}

    static constraints = {
		diasemana(blank:false, maxSize:14, minSize:6)
		horario(blank:false, matches:"^([0-1][0-9]|[2][0-3]):([0-5][0-9])")
    }
}
