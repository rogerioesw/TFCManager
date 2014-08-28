package tfcmanager

class Convocacao {
	int ano
	int numero
	Date data
	String assunto
	String mensagem
	
	static hasMany = [professorhasConvocacao:Professor_has_Convocacao]

    static constraints = {
		ano(blank:false, maxSize:4, minSize:4)
		data(nullable:false)
		assunto(blank:false, minSize:4, maxSize:25)
		mensagem(blank:false, minSize:4, maxSize:80)
    }
}
