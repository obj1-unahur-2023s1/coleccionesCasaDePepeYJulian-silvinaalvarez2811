import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	var cuentaBanco 
	
	
	method cosas(){return cosas}
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
	/////////////////////////////////////
	method comprar(cosa){
			cosas.add(cosa)
			cuentaBanco.extraer(cosa.precio())
	}
	method gastar(importe){cuentaBanco.extraer(importe)}
	method dineroDisponible(){return cuentaBanco.saldo()}
	method usarCuentaDeBanco(unaCuenta){
		cuentaBanco = unaCuenta
	}	
}
object cuentaCorriente{
	var saldo = 0
	
	method depositar(importe){ saldo += importe}
	method extraer(importe){ saldo -= importe}
	method saldo(){return saldo}
}

object cuentaConGastos{
	var saldo = 0 
	
	method depositar(importe){
		saldo += (importe - 200)
	}
	method extraer(importe){
		if(importe <= 10000){
			saldo -= (importe + 200)
		}else {
			saldo -= (importe * 1.02)
		}
	}
	method saldo(){return saldo}
}


object cuentaCombinada{
	
	var cuentaPrimaria 
	var cuentaSecundaria
	
	method esCuentaPrimaria(unaCuenta){cuentaPrimaria = unaCuenta}
	method esCuentaSecundaria(unaCuenta){cuentaSecundaria = unaCuenta}
	method saldo(){return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()}
	method depositar(importe){
		cuentaPrimaria.depositar(importe)
	}
	method extraer(importe){
		if(cuentaPrimaria.saldo() >= importe){
			cuentaPrimaria.extraer(importe)
		}else{
			cuentaSecundaria.extraer(importe - cuentaPrimaria.saldo())
			cuentaPrimaria.extraer(cuentaPrimaria.saldo())
		}	 
	}
	
}


 