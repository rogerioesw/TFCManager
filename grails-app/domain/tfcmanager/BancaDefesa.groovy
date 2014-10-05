package tfcmanager

class BancaDefesa {
	Date data
	String horario
	String observacao
	
	static belongsTo = [tfc : TFC]
	
	static hasMany = [bancahasProfessor : BancaDefesa_has_Professor]

    static constraints = {
		data(nullable:false)
		horario(blank:false, matches:"^([0-1][0-9]|[2][0-3]):([0-5][0-9])")
		observacao(blank:false, maxSize:80, minSize:2)
    }
}
