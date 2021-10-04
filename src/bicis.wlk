/*
 *   Bicis con sus accesorios
 *   De cada bicicleta se informa: el rodado (p.ej. 26), el largo en centímetros (p.ej. 120 para una bici de 1.20 metros de largo), la marca (p.ej. "Legnano"), y los accesorios. Estos últimos (los accesorios) aportan distintas características a la bici en la que se instalan.

 *   A partir de estos datos, debe poder obtenerse la siguiente información referida a una bici:

 *   altura: se calcula como rodado * 2.5 + 15.
 *   velocidad de crucero: si la bici tiene más de 120 cm, entonces se calcula como rodado + 6, si no, como rodado + 2.
 *   carga: es la suma de la carga que puede llevar cada accesorio.
 *   peso: es la suma de rodado / 2 más el peso total de los accesorios.
 *   tieneLuz: es verdadero si al menos uno de los accesorios es luminoso.
 *   Se deben contemplar los siguientes accesorios

 *   Farolito: pesa 0.5 kg, no lleva carga (o sea, lleva 0 kg de carga), es luminoso.
 *   Canasto: de cada canasto se informa el volumen. El peso se calcula como volumen / 10, la carga como volumen * 2. No es luminoso.
 *   Morral de bici: para cada uno se informa el largo (en centímetros), y si tiene ojo de gato o no. El peso es fijo, 1.2 kg. La carga se calcula como largo / 3. Es luminoso si tiene ojo de gato.
 *   Agregar un método para consultar la cantidad de accesorios livianos de una bici, o sea, la cantidad de accesorios cuyo peso es menor a 1 kg.
 */

/* const bmx = new Bici(rodado = 24, largo = 120, marca = "Canaglia", accesorios = []) */
class Bici {

  const rodado
  const largo // cm
  const marca
  const accesorios = []

  method altura() = rodado * 2.5 + 15

  method velocidadCrucero() = rodado + if(largo > 120) 6 else 2

  method carga() = accesorios.sum({ unAccesorio => unAccesorio.carga() })

  method peso() = (rodado / 2) + accesorios.sum({ unAccesorio => unAccesorio.peso() })

  method tieneLuz() = accesorios.any({ unAccesorio => unAccesorio.esLuminoso() })

  method cantidadAccesoriosLivianos() = accesorios.count({ unAccesorio => unAccesorio.peso() < 1 })

}

