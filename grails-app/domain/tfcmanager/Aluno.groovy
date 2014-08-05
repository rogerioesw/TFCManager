package tfcmanager

class Aluno {
	String nome
	String email
	String faculdade
	
	static belongsTo = TFC
	static hasMany = [horario : HorarioSemanal, tfc : TFC]

    static constraints = {
    }
}
