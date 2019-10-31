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
	method graduacion() { return self.gramoPorLitro() * 2).min  }
}

object enteRegulador{
	method graduacionReglamentaria() { return 2 }
}


class CervezaRoja {
	var property gramos
	var property pais
	var property graduacion
	
	method gramoPorLitro() { return gramos }
	method paisDondeSeFabrico() { return pais }
	method graduacion() { return graduacionReglamentaria.enteRegulador() * 1.25 }
}

class Jarras {
	var property litros
	var property marcas
	var property pais
	
	method capacidad() { return litros  }
	method marcaDeJarra(marca) { return marcas }
	method paisDeJarra() { return pais }
	method contenidoDeAlcohol() { capacidad * marcas.graduacion() }
}