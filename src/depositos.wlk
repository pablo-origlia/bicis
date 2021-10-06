import bicis.*
import accesorios.*

class Deposito {

  const property bicicletas = []

  method agregarBici(unaBici) {
    bicicletas.add(unaBici)
  }

  method quitarBici(unaBici) {
    bicicletas.remove(unaBici)
  }

  method bicisMasRapidas() = bicicletas.filter({ b => b.velocidadCrucero() > 25 })

  method marcaDeBicis() = bicicletas.map({ b => b.marca() }).asSet()

  method esNocturno() = bicicletas.all({ b => b.tieneLuz() })

  method tieneBiciParaLLevarCargaDe(unPeso) = bicicletas.any({ b => b.carga() > unPeso })

  method marcaBiciMasRapida() = bicicletas.max({ b => b.velocidadCrucero() }).marca()

  method cargaTotalBicisLargas() = bicicletas.filter({ b => b.largo() > 170 }).sum({ b => b.carga() })

  method bicisSinAccesorios() = bicicletas.count({ b => b.accesorios().size() == 0 })

  method bicisCompanieras(bici) = bicicletas.filter({ b => b.marca() == bici.marca() and (b.largo() - bici.largo()).abs() < 10 and b != bici })

  method hayCompanieras() = bicicletas.any({ b => self.bicisCompanieras(b).size() > 0 })

  method parDeBicisCompanieras() {
    const parDeBicis = []
    if (self.hayCompanieras()) {
      bicicletas.forEach({ bici =>
        if (self.bicisCompanieras(bici).size() > 0) {
          self.bicisCompanieras(bici).forEach({ c =>
            if (not (parDeBicis.contains([ bici, c ]) or parDeBicis.contains([ c, bici ]))) {
              parDeBicis.add([ bici, c ])
            }
          })
        }
      })
    }
    return parDeBicis
  }

  method seHizoLaLuz() {
  }

}

/*
 * 6. Desafíos
 * Van algunos desafíos, que son eso, desafíos, se escapan del contenido 
 * standard de la materia. Tener algunas nociones sobre estructuras de datos 
 * puede servir para resolverlos.
 * 
 * Hay compañeras
 * Poder preguntarle a un depósito si tiene algún par de bicis compañeras o no; 
 * se espera un booleano como respuesta.
 * 
 * Las parejas de compañeras -- mucho más difícil
 * poder pedirle a un depósito los pares de bicis compañeras. Se espera una 
 * colección de pares de bicis, se puede crear una clase ParDeBicis o 
 * representar un par de bicis mediante una lista.
 * 
 * Se hizo la luz
 * poder preguntarle a un depósito si "se hizo la luz". Esto es verdadero si a 
 * partir de que entró la primer bici con luz, todas las bicis que entraron 
 * después también tienen luz. Obviamente, para resolver esto tienen que 
 * memorizar las bicis en alguna forma que permita saber en qué orden se fueron 
 * agregando.
 */
