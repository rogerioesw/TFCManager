package tfcmanager

class Professor {
	String nome
	String email
	
	static hasMany = [professorhasHorario:Professor_has_HorarioSemanal, 
		banca:BancaDefesa, tfchasProfessor:TFC_has_Professor,
		professorhasConvocacao:Professor_has_Convocacao]
	
	static belongsTo = BancaDefesa

    static constraints = {
		nome(blank:false, maxSize:40, minSize:10)
		email(blank:false, email:true)
    }
	
	public String toString() {
		this.nome
	}
}
