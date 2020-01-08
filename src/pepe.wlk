

object gerente {
	
	method sueldo() = 15000
	
}

object cadete {
	
			
	method sueldo() = 20000
		
	
	
}

class Empleado {
	var categoria = cadete
	var faltas = 0
	var bonoPresentismo = normal 
	var bonoResultado = fijo
	
	method faltas() = faltas
	
	method sueldoSinBonos () = categoria.sueldo()
	
	method sueldo() = categoria.sueldo() + bonoResultado.cantidad(self) + bonoPresentismo.cantidad(self)
	
	method cambiarPuesto(puesto) { categoria = puesto }
	
}

const pepe = new Empleado (categoria= cadete, faltas= 0, bonoPresentismo = normal, bonoResultado = fijo)

// Bono Resultado

object porcentaje {
	
	method cantidad(empleado)=empleado.sueldoSinBonos()*0.10
	
}

object fijo {
	
	method cantidad(empleado) = 800
	
}

object nulo {
	
	method cantidad(empleado) = 0
} 

// Bono Presentismo

object normal {
	
	method cantidad(empleado){
		
		if(empleado.faltas() == 0){
			
			return 2000
		}
		if(empleado.faltas() == 1){
			
			return 1000
		}
		else{
			return 0
		}
	}
	
}

object ajuste {
	
	method cantidad(empleado){
		if(empleado.faltas() == 0){
			
			return 100
		}
		else{
			return 0
		}
	
	}
	
}

object demagogico {
	
	method cantidad(empleado){
		
		if(empleado.categoria().sueldo() < 18000){
			return 500
		}
		else {
			
			return 300
		}
	}
	
}





