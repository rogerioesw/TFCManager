package tfcmanager

class Formula {
	String descricao
	double preprojetoTFCI
	double coordenador
	double orientador
	double banca
	Disciplina disciplina
	

    static constraints = {
		coordenador(nullable:true, blank:true)
		orientador(nullable:true, blank:true)
		banca(nullable:true, blank:true)
		preprojetoTFCI(nullable:true, blank:true)
		descricao(blank:false)
    }
	
	public String toString() {
		this.descricao
	}
}
