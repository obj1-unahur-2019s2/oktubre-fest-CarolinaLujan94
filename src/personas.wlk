import cervezas_y_jarras.*

class PersonaBelga {
	var peso
	var property cantidadDeAlcohol
	var property cervezas = []
	var property jarras = []
	
	method peso() { return peso }
	method jarraQueCompro() { return jarras.any({j=>j.marcaDeJarra()}) }
	method escuchaMusica() { return true }
	method nivelDeAguante() { return self.peso() * cantidadDeAlcohol }
	method cervezaQueLeGusta() { return cervezas.filter({c=>c.gramosPorLitro() > 4 }) } 
	method estaEbria() { return cantidadDeAlcohol * self.peso() > self.nivelDeAguante() }
}

class PersonaCheca {
	var peso
	var property cantidadDeAlcohol
	var property cervezas = []
	var property jarras = []
		
	method peso() { return peso }
	method jarraQueCompro() { return jarras.any({j=>j.marcaDeJarra()}) }
	method escuchaMusica() { return true }
	method nivelDeAguante() { return self.peso() * cantidadDeAlcohol }
	method cervezaQueLeGusta() { return cervezas.filter({c=>c.graduacion() > 8 }) }
	method estaEbria() { return cantidadDeAlcohol * self.peso() > self.nivelDeAguante() }
}

class PersonaAlemana {
	var peso
	var property cantidadDeAlcohol
	var property cervezas = []
	var property jarras = []
		
	method peso() { return peso }
	method jarraQueCompro() { return jarras.any({j=>j.marcaDeJarra()}) }
	method escuchaMusica() { return true }
	method nivelDeAguante() { return self.peso() * cantidadDeAlcohol }
	method cervezaQueLeGusta() {  return cervezas.all() }
	method estaEbria() { return cantidadDeAlcohol * self.peso() > self.nivelDeAguante() }
}
