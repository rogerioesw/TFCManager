package tfcmanager

class HorarioSemanal {
	String diasemana
	Date horario
	
	static hasMany = [professor : Professor, aluno : Aluno, tfc : TFC]

    static constraints = {
    }
}
