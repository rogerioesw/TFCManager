package tfcmanager

class TFC_has_Professor {
	String tipo
	Professor professor
	TFC tfc

    static constraints = {
		tipo(blank:false, minSize:5, maxSize:14)
    }
}
