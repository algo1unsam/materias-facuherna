class Carrera {

	var property materias = []

	method agregarMaterias(unaMateria) {
		materias.add(unaMateria)
	}

}

class Materia {

	var property carrera = []
	var property inscripcion = false
	var property tipoInscripcion=null
	var property cupo=null

}

class MateriaAprobada {

	var nota = null
	var materia = null

}

class Estudiante {

	var property carrera = []
	var property materiasAprobadas = []

	method agregarCarreras(unaCarrera) {
		carrera.add(unaCarrera)
	}

	method agregarMateriasAprobadas(unaMateApro, nota) {
		materiasAprobadas.add(unaMateApro)
	}

	method aprobarMateria(unaMateria, unaNota) {
		if (unaNota >= 7) {
			self.agregarMateriasAprobadas(unaMateria, unaNota)
		}
	}

	method tieneAprobada(materia) {
		return materiasAprobadas.any{ materiasAprobada => materiasAprobada == materia }
	}

	method estaLaMateriaEnLaCarrera(unaMateria) {
		return carrera.contains(unaMateria)
	}

	method estaCursandoVariasCarreras() {
		carrera.all{ unaCarrera => unaCarrera.size() >= 2}
	}

	method Inscribirse(unaMateria) {
		unaMateria.inscripcion(true)
	}

}





