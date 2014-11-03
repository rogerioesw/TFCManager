package tfcmanager

class AvaliacaoTFC {
	double preprojetoTFCI
	double coordenador
	double orientador
	double banca
	
	Aluno aluno
	TFC tfc
	
	double notafinal
		
    static constraints = {
		notafinal(nullable:true, blank:true)
		coordenador(nullable:true, blank:true)
		orientador(nullable:true, blank:true)
		banca(nullable:true, blank:true)
		preprojetoTFCI(nullable:true, blank:true)
    }
	
	double getNotafinal() {
		try {
		if((tfc?.disciplina?.nome=="TFCI")||(tfc?.disciplina?.nome=="TCCI")) {
			def nf = ((preprojetoTFCI*10)+(orientador*20)+(coordenador*20)+(banca*50))/100
			return nf
		}
		if((tfc?.disciplina?.nome=="TFCII")||(tfc?.disciplina?.nome)=="TCCII") {
			def nf = ((preprojetoTFCI*15)+(orientador*20)+(coordenador*15)+(banca*50))/100
			return nf
		}
		} catch(Exception ex) {
			return 0.0
		}
		
	}

	void setNotafinal() {}

}
