class CervezaRubia {
	var property gramos
	var property pais
	var property graduacion
	
	method gramoPorLitro() { return gramos }
	method paisDondeSeFabrico() { return pais }
	method graduacion() { return graduacion }
}

class CervezaNegra {
	var property gramos
	var property pais
	var property graduacion
	
	method gramoPorLitro() { return gramos }
	method paisDondeSeFabrico() { return pais }
	method graduacion() { return graduacion.between(graduacion.min(), self.gramoPorLitro() * 2) }
}

class CervezaRoja {
	var property gramos
	var property pais
	var property graduacion
	
	method gramoPorLitro() { return gramos }
	method paisDondeSeFabrico() { return pais }
	method graduacion() { return graduacion.CervezaNegra() * 2 }
}

class Jarras {
	var property litros
	var marcas
	
	method capacidad() { return litros  }
	method marcaDeJarra() { return marcas }
}