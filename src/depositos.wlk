import bicis.*
import accesorios.*

class Deposito {

  const property bicicletas = []
  var cantSinLuz = 0
  var flagConLuz = false

  method agregarBici(unaBici) {
    bicicletas.add(unaBici)
    self.contarSinLuz(unaBici)
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

  method contarSinLuz(unaBici) {
    if (unaBici.tieneLuz()) {
      flagConLuz = true
    } else {
      cantSinLuz += if (flagConLuz) 0 else 1
    }
  }

  method seHizoLaLuz() {
    var seHizoLaLuz
    if (bicicletas.all({ b => not b.tieneLuz() })) {
      seHizoLaLuz = false
    } else {
      seHizoLaLuz = bicicletas.drop(cantSinLuz).all({ b => b.tieneLuz() })
    }
    return seHizoLaLuz
  }

}

