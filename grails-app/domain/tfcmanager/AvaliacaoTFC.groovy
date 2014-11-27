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
			def nf = ((preprojetoTFCI*tfc?.formula?.preprojetoTFCI)+(orientador*tfc?.formula?.orientador)+(coordenador*tfc?.formula?.coordenador)+(banca*tfc?.formula?.banca))/100
			return nf
		} catch(Exception ex) {
			return 0.0
		}
		
	}

	void setNotafinal() {}

}
