import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method cosas(){return cosas}
	method comprar(cosa){cosas.add(cosa)}
	method cantidadDeCosasCompradas(){return cosas.size()}
	method tieneComida(){return cosas.any({c =>c.esComida()})}	
	
	method vieneDeEquiparse(){
			return (cosas.last().esElectrodomestico() or 
				cosas.last().precio() >50000)
	}
	method esDerrochona(){return cosas.sum({c =>c.precio()})>= 90000}
	method compraMasCara(){return cosas.max({c =>c.precio()})}
	method electrodomesticosComprados(){return cosas.filter({c =>c.esElectrodomestico()})}
	method malaEpoca(){return cosas.all({c =>c.esComida()})}
	method queFaltaComprar(lista){return lista.asSet().difference(cosas.asSet())}	
	method faltaComida(){return cosas.count({c =>c.esComida()}) < 2}		
}
 