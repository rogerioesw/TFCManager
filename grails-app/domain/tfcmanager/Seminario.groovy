package tfcmanager

class Seminario {
	String descricao
	Date data
	String horario
	String observacao
	
	static belongsTo = [tfc:TFC]

    static constraints = {
		descricao(blank:false, minSize:4, maxSize:15)
		data(blank:false, nullable:false)
		horario(blank:false, matches:"^([0-1][0-9]|[2][0-3]):([0-5][0-9])")
		observacao(blank:false, minSize:5, maxSize:40)
    }
}
