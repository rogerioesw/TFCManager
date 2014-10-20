package tfcmanager

class Papel {

	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
	
	public String toString() {
		this.authority
	}
}
