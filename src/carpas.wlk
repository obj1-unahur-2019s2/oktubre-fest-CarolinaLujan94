import cervezas_y_jarras.*
import personas.*

class Carpas {
	var property limite = 100
	var property jarras = []
	var property cervezas = []
	var property persona = []
	
	method limiteDeGente() { return limite }
	method tieneBandaDeMusica() { return true }
	method jarrasQueVende(marca) { return jarras.filter({j=>j.marcaDeJarra(marca)}) }
	method quiereEntrar() { return cervezas.filter({c=>c.cervezaQueLeGusta()}) and persona.escuchaMusica() and persona % 2 == 0}
	method dejarIngresar() { return self.limiteDeGente() < 100 and not persona.estaEbria() }
	method puedeEntrar() {  }
	method entre() {  }
	method leSirva() { return persona.jarraQueCompro() }
	method ebriosEmpedernidos() { return persona.count({p=>p.estaEbria()}) and jarras.capacidad() >= 1000} 
	method esPatriota() { return persona.jarraQueCompro() == jarras.paisDeJarra() }
}
