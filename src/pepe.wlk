object sueldo {
	
	
	method sueldoPersona(persona) = sueldoNeto.sueldo(persona)+ bonoResultados.porcentaje(persona) + bonoPresentismo.normal(persona)
}


object pepe {
	var categoria = cadete
	var faltas = 0
	//method sueldoNeto() = 
	
	method faltas() = faltas
	

	
}

object sueldoNeto {
	var sueldo
	method sueldo(persona){
		
	if (persona.categoria() == gerente){
		return 15000
	}
	if(persona.categoria() == cadete){
		return 20000
		}
	}
	
}


object bonoResultados{
	
	method porcentaje(empleado)=empleado.sueldo()*0.10
	method fijo()=800
	method nulo()=0
}

object bonoPresentismo{
	
	method normal(empleado){
		
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
	method ajuste(empleado){
		if(empleado.faltas() == 0){
			
			return 100
		}
		else{
			return 0
		}
	
	}
	method demagogico(empleado){
		
		if(sueldoNeto.sueldo(empleado) < 18000){
			return 500
		}
		else {
			
			return 300
		}
	}
}

