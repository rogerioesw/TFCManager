package tfcmanager

class BancaDefesa {
	Date data
	Date horario
	String observacao
	
	static belongsTo = TFC
	static hasMany = [professor : Professor]

    static constraints = {
    }
}
