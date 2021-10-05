import accesorios.*

class Bici {

  const property rodado
  const property largo // cm
  const property marca
  const property accesorios = []

  method agregarAccesorio(unAccesorio) {
    accesorios.add(unAccesorio)
  }

  method quitarAccesorio(unAccesorio) {
    accesorios.remove(unAccesorio)
  }

  method altura() = rodado * 2.5 + 15

  method velocidadCrucero() = rodado + if(largo > 120) 6 else 2

  method carga() = accesorios.sum({ a => a.carga() })

  method peso() = (rodado / 2) + accesorios.sum({ a => a.peso() })

  method tieneLuz() = accesorios.any({ a => a.esLuminoso() })

  method cantidadAccesoriosLivianos() = accesorios.count({ a => a.peso() < 1 })

}

