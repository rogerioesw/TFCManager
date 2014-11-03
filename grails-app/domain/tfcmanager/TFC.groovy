package tfcmanager

class TFC {
	String semestre
	String situacao
	String observacao
	Disciplina disciplina
	String projeto
	HorarioSemanal horario
	
	
	static hasMany = [seminario : Seminario, presenca : PresencaOrientacao, 
		aluno : Aluno, tfc_has_professor : TFC_has_Professor, documento : Documentos]

    static constraints = {
		semestre(blank:false, minSize:6, maxSize:6, matches:"^([1-9][0-9][0-9][0-9])/([1]|[2])")
		situacao(blank:false, minSize:5, maxSize:8)
		observacao(blank:false, minSize:5, maxSize:30)
    }
	

	
	public String toString() {
		this.projeto
	}
}
