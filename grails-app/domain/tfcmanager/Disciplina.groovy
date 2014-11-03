package tfcmanager

class Disciplina {
	String nome
	String status
	
	static hasMany = [tfc : TFC]

    static constraints = {
		nome(inList:['TFCI', 'TFCII', 'TCCI', 'TCCII'])
		status(inList:['Ativo', 'Inativo'])
    }
	
	String getNome() {
		switch(nome) {
			case 'TFCI' : return "TFCI"; break
			case 'TFCII' : return "TFCII"; break
			case 'TCCI' : return "TCCI"; break
			case 'TCCII' : return "TCCII"; break
			default: "N�o cadastrado"
		}
	}
	
	void setNome() {}
	
	String getStatus() {
		switch(status) {
			case 'Ativo' : return "Ativo"; break
			case 'Inativo' : return "Inativo"; break
			default: "N�o cadastrado"
		}
	}
	
	void setStatus() {}
	
	public String toString() {
		this.nome
	}
}
