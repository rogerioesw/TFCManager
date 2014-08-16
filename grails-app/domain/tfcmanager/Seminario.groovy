package tfcmanager

class Seminario {
	String descricao
	Date data
	String horario
	String observacao
	
	static belongsTo = [tfc:TFC]

    static constraints = {
    }
}
