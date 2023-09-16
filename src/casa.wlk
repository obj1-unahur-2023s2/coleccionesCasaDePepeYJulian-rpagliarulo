import cosas.*
import cuentasBancarias.*

object casaDePepeYJulian {
	const cosas = []
	var property cuentaBancaria= cuentaCombinada
	
	method comprar(cosa){
		cosas.add(cosa)
		cuentaBancaria.extraer(cosa.precio())
		}
	
	method cantidadDeCosasCompradas()= cosas.size()
	
	method tieneComida()= cosas.any({cosa => cosa.esComida()})
	
	method vieneDeEquiparse()= cosas.last().esElectrodomestico() or cosas.last().precio() > 50000
	
	method esDerrochona()= cosas.sum({cosa => cosa.precio()}) >= 90000
	
	method compraMasCara()= cosas.max({cosa => cosa.precio()})
	
	method electrodomesticosComprados()= cosas.filter({cosa => cosa.esElectrodomestico()})
	
	method malaEpoca()= cosas.all({cosa => cosa.esComida()}) 
	
	method queFaltaComprar(lista) {
		// recibe una lista de cosas y devuelve las cosas de esa lista que aún no se han comprado.
	}
	
	method faltaComida()= cosas.filter({cosa => cosa.esComida()}).size() < 2
}

