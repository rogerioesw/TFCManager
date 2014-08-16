package tfcmanager

class Professor {
	String nome
	String email
	
	static hasMany = [professorhasHorario : Professor_has_HorarioSemanal, 
		bancahasProfessor : BancaDefesa_has_Professor, tfchasProfessor : TFC_has_Professor]

    static constraints = {
    }
}
