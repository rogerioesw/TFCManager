package tfcmanager

class Disciplina {
	String nome
	String status
	
	static hasMany = [tfc : TFC, formula : Formula]

    static constraints = {
		nome(inList:['TFCI', 'TFCII'])
		status(inList:['Ativo', 'Inativo'])
    }
	
	String getNome() {
		switch(nome) {
			case 'TFCI' : return "TFCI"; break
			case 'TFCII' : return "TFCII"; break
			default: "Não cadastrado"
		}
	}
	
	void setNome() {}
	
	String getStatus() {
		switch(status) {
			case 'Ativo' : return "Ativo"; break
			case 'Inativo' : return "Inativo"; break
			default: "Não cadastrado"
		}
	}
	
	void setStatus() {}
	
	public String toString() {
		this.nome
	}
}
