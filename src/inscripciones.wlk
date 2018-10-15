import tiposDeInscripcion.*

class Carrera {

	var property materias = []

	method agregarMaterias(unaMateria) {
		materias.add(unaMateria)
	}

}

class Materia {

	var property carrera = null
	var property inscripcion = false
	var property tipoInscripcion = null
	var property cupo = null
	var property hayLugar=false

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
		materiasAprobadas.add(unaMateApro, nota)
	}

	method aprobarMateria(unaMateria, unaNota) {
		if (unaNota >= 7) {
			self.agregarMateriasAprobadas(unaMateria, unaNota)
		}
	}

	method tieneAprobada(materia) {
		return materiasAprobadas.any{ materiasAprobada => materiasAprobada == materia }
	}

	method estaLaMateriaEnLaCarrera() {
		return carrera.any{ unaMateria => unaMateria.carrera() }
	}

	method estaCursandoVariasCarreras() {
		carrera.all{ unaCarrera => unaCarrera.size() >= 2}
	}

	method Inscribirse(unaMateria) {
		if (self.puedeInscribirse(unaMateria) and self.estaLaMateriaEnLaCarrera()) {
			unaMateria.inscripcion(true)
		}
	}

	method puedeInscribirse(unaMateria) {
		return !self.tieneAprobada(unaMateria) and unaMateria.tipoDeInscripcion().requisito(self)
	}

	method registrarMateriaAprobada() {
		return materiasAprobadas.asSet()
	}

}

