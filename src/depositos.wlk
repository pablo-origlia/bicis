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

  method hayCompanieras() = coleccion.any({ unaBici => self.bicisCompanieras(unaBici).size() > 0 })

}

/*
 * 6. Desafíos
 * Van algunos desafíos, que son eso, desafíos, se escapan del contenido standard 
 * de la materia. Tener algunas nociones sobre estructuras de datos puede servir 
 * para resolverlos.
 * 
 * Hay compañeras
 * Poder preguntarle a un depósito si tiene algún par de bicis compañeras o no; 
 * se espera un booleano como respuesta.
 * 
 * Las parejas de compañeras -- mucho más difícil
 * poder pedirle a un depósito los pares de bicis compañeras. Se espera una 
 * colección de pares de bicis, se puede crear una clase ParDeBicis o representar 
 * un par de bicis mediante una lista.
 * 
 * Se hizo la luz
 * poder preguntarle a un depósito si "se hizo la luz". Esto es verdadero si a 
 * partir de que entró la primer bici con luz, todas las bicis que entraron después 
 * también tienen luz. Obviamente, para resolver esto tienen que memorizar las bicis 
 * en alguna forma que permita saber en qué orden se fueron agregando.
 */
