package tfcmanager

class Professor {
	String nome
	String email
	
	static belongsTo = [HorarioSemanal, BancaDefesa]
	static hasMany = [horario : HorarioSemanal, tfc : TFC, banca : BancaDefesa]

    static constraints = {
    }
}
