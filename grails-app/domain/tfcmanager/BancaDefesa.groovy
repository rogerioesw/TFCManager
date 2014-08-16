package tfcmanager

class BancaDefesa {
	Date data
	String horario
	String observacao
	
	static belongsTo = TFC
	static hasMany = [bancahasProfessor : BancaDefesa_has_Professor]

    static constraints = {
    }
}
