

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

////// mas cosas////

object milanesas{
	method precio() { return 2600 }
	method esComida() { return true }
	method esElectrodomestico() { return false }		
}
object salsaDeTomates {
	method precio() { return 900 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}	
object microondas {
	method precio() { return 42000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}	
object cebollas {
	method precio() { return 250 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}	
object compu {
	method precio() { return 500 * dolar.precioDeVenta() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}	
object packComida{
	const platoConAderezo = []
	
	method agregarPlato(unPlato){platoConAderezo.add(unPlato)}
	method agregarAderezo(unAderezo){platoConAderezo.add(unAderezo)}
	method esComida() { return true }
	method esElectrodomestico() { return false }	
	method precio() { return platoConAderezo.sum({pack => pack.precio()})}
}	
object dolar{
	method precioDeVenta(){
		return 480
	}
}		
	
	
