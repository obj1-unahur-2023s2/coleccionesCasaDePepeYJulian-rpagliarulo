object cuentaCorriente {
	var saldo= 100000
	
	method depositar(importe) {saldo += importe}
	method extraer(importe) {saldo -= importe}
	method saldo()= saldo
	
}

object cuentaConGastos {
	var saldo= 20000000
	
	method depositar(importe) {saldo += (importe-200)}
	method extraer(importe) { 
		if (importe <= 10000) {
			saldo -= importe + 200}
		else {
			saldo -= importe + (importe * 2 / 100)
		}	
	}
	method saldo()= saldo
	
}

object cuentaCombinada {
	var property cuentaPrimaria= cuentaCorriente
	var property cuentaSecundaria= cuentaConGastos
	
	method depositar(importe) {cuentaPrimaria.depositar(importe)}
	method extraer(importe) { 
		if (cuentaPrimaria.saldo() >= importe) {
			cuentaPrimaria.extraer(importe)
		} else {
			cuentaSecundaria.extraer(importe)
		}
	}
	
	method saldo()= cuentaPrimaria.saldo() + cuentaSecundaria.saldo() 
}