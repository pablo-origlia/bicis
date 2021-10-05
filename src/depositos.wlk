import bicis.*
import accesorios.*

class Deposito {

  const property coleccion = []

  method agregarBici(unaBici) {
    coleccion.add(unaBici)
  }

  method quitarBici(unaBici) {
    coleccion.remove(unaBici)
  }

  method bicisMasRapidas() = coleccion.filter({ c => c.velocidadCrucero() > 25 })

  method marcaDeBicis() = coleccion.map({ c => c.marca() }).asSet()

  method esNocturno() = coleccion.all({ c => c.tieneLuz() })

  method tieneBiciParaLLevarCargaDe(unPeso) = coleccion.any({ c => c.carga() > unPeso })

  method marcaBiciMasRapida() = coleccion.max({ c => c.velocidadCrucero() }).marca()

  method cargaTotalBicisLargas() = coleccion.filter({ c => c.largo() > 170 }).sum({ c => c.carga() })

  method bicisSinAccesorios() = coleccion.count({ c => c.accesorios().size() == 0 })

  method bicisCompanieras(bicicleta) = coleccion.filter({ unaBici => unaBici.marca() == bicicleta.marca() and (unaBici.largo() - bicicleta.largo()).abs() < 10 and unaBici != bicicleta })

}

