package tfcmanager

class Convocacao {
	int ano
	int numero
	Date data
	String assunto
	String mensagem
	
	static hasMany = [professorhasConvocacao:Professor_has_Convocacao]

    static constraints = {
    }
}
