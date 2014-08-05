package tfcmanager

class Professor {
	String nome
	String email
	
	static belongsTo = [BancaDefesa, TFC]
	static hasMany = [horario : HorarioSemanal, tfc : TFC, banca : BancaDefesa]

    static constraints = {
    }
}
