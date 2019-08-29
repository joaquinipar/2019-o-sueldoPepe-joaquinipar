object pepe {
	var puesto = cadete
	var faltas = 0
	method sueldo() {
		return puesto.sueldoNeto()
	}
	method faltas() = faltas
	
	method cambiarPuesto(nuevoPuesto) {
		puesto = nuevoPuesto
	}
	/*method cambiarSueldo(nuevoSueldo){
		sueldo = nuevoSueldo
	}*/
}


object gerente {
	method sueldoNeto() { return 15000 }
}

object cadete {
	method sueldoNeto() { return 20000 }
}

object bonoPorcentaje{
	
	method porcentaje (empleado)=empleado.sueldo()*1.10
}

/*
object bono {
	var bono = 0
	method porcentaje (empleado){
		
		bono = (empleado.sueldo() * 0.10)
	}
	method fijo(){
		
		bono = 800
	}
	
	method presentismo (empleado){
		
		if(empleado.faltas() == 0){
			bono = 2000
		}
		if(empleado.faltas() == 1){
			bono = 1000
		}
		else {
			bono = 0
		}
	}
	method bonoAsignado(empleado)=bono
}*/