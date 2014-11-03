package tfcmanager

class TFC_has_Professor {
	String tipo
	Professor professor
	TFC tfc

    static constraints = {
		tipo(inList:['Orientador', 'Co-orientador'])
    }
	
	String getTipo() {
		switch (tipo) {
			case 'Orientador': return "Orientador"; break
			case 'Co-orientador' : return "Co-orientador"; break
			default: "Não cadastrado"
		}
	}
	
	void setTipo() {}
}
