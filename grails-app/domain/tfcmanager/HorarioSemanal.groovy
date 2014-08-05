package tfcmanager

class HorarioSemanal {
	String diasemana
	Date horario
	
	static belongsTo = [Aluno, Professor]
	static hasMany = [professor : Professor, aluno : Aluno, tfc : TFC]

    static constraints = {
    }
}
