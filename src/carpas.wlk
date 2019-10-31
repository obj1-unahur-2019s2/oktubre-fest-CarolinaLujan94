import cervezas_y_jarras.*
import personas.*

class Carpas {
	var property limite
	var property jarras = []
	
	method limiteDeGente() { return limite }
	method tieneBandaDeMusica() { return true }
	method jarrasQueVende() { return jarras.filter({j=>j.marcaDeJarra()}) }
}
