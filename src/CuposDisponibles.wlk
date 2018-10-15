object porOrdenDeLlegada {

	var property listaDeEspera = []
	
	method hayCupoDisponible(estudiante,unaMateria){
		if(!unaMateria.hayLugar()){
			listaDeEspera.add(estudiante)
		}
	}
}

object elitista{
	
}

