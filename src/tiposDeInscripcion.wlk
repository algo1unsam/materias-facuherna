import inscripciones.*

object correlativas {

	var property materiasCorrelativas = []

	method materiasQueSonCorrelativas(mc) {
		materiasCorrelativas.add(mc)
	}

	method requisito(estudiante) {
		return materiasCorrelativas.all{ unaMateria => unaMateria.tieneAprobada(unaMateria) }
	}

}

object porCredito {

	method requisito(estudiante) {
		return estudiante.materiasAprobadas().size() * 50 >= 250
	}

}

object porAnio {

	var property anioAnterior = []

	method materiasDeAnioAnterior(an) {
		anioAnterior.add(an)
	}

	method requisito(estudiante) {
		return anioAnterior.all{ unaMateria => unaMateria.tieneAprobada(unaMateria) }
	}

}

object nada {

	method requisito(estudiante) {
		return true
	}

}

