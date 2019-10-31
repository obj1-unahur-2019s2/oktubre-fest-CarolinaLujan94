import cervezas_y_jarras.*

class PersonaBelga {
	var peso
	var property cantidadDeAlcohol
	var property cervezas = []
	var property jarras = []
	
	method peso() { return peso }
	method jarraQueCompro(marca) { return jarras.any({j=>j.marcaDeJarra(marca)}) }
	method escuchaMusica() { return true }
	method nivelDeAguante() { return self.peso() * cantidadDeAlcohol }
	method cervezaQueLeGusta() { return cervezas.filter({c=>c.gramosPorLitro() > 4 }) } 
	method estaEbria() { return cantidadDeAlcohol * self.peso() > self.nivelDeAguante() }
	method totalDeAlcoholIngerido() {
		return jarras.sum {j => contenidoDeAlcohol() }
	}
}

class PersonaCheca {
	var peso
	var property cantidadDeAlcohol
	var property cervezas = []
	var property jarras = []
		
	method peso() { return peso }
	method jarraQueCompro(marca) { return jarras.any({j=>j.marcaDeJarra(marca)}) }
	method escuchaMusica() { return false }
	method nivelDeAguante() { return self.peso() * cantidadDeAlcohol }
	method cervezaQueLeGusta(cerveza) { return cervezas.filter({c=>c.graduacion(cerveza) > 8 }) }
	method estaEbria() { return cantidadDeAlcohol * self.peso() > self.nivelDeAguante() }
}

class PersonaAlemana {
	var peso
	var property cantidadDeAlcohol
	var property cervezas = []
	var property jarras = []
		
	method peso() { return peso }
	method jarraQueCompro(marca) { return jarras.any({j=>j.marcaDeJarra(marca)}) }
	method escuchaMusica() { return true }
	method nivelDeAguante() { return self.peso() * cantidadDeAlcohol }
	method cervezaQueLeGusta() {  return cervezas.all() }
	method estaEbria() { return cantidadDeAlcohol * self.peso() > self.nivelDeAguante() }
}
