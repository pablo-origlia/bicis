/*
 *   Se deben contemplar los siguientes accesorios

 *   Farolito: pesa 0.5 kg, no lleva carga (o sea, lleva 0 kg de carga), 
 *   es luminoso.
 *   
 *   Canasto: de cada canasto se informa el volumen. El peso se calcula 
 *   como volumen / 10, la carga como volumen * 2. No es luminoso.
 *   
 *   Morral de bici: para cada uno se informa el largo (en centímetros), 
 *   y si tiene ojo de gato o no. El peso es fijo, 1.2 kg. La carga se 
 *   calcula como largo / 3. Es luminoso si tiene ojo de gato.

 *   Agregar un método para consultar la cantidad de accesorios livianos de una bici, o sea, la cantidad de accesorios cuyo peso es menor a 1 kg.
 */
object farolito {

  //const property peso = 0.5 // kg
  //const property carga = 0 // kg
  //const property esLuminoso = true
  
  method peso() = 0.5
  method carga() = 0
  method esLuminoso() =  true

}

/* const canasto1 = new Canasto(volumen = 0.3) */
class Canasto {

  const volumen
  //const property esLuminoso = false

  method peso() = volumen / 10 // kg
  method carga() = volumen * 2 // kg
  method esLuminoso() = false
}

/* const morral1 = new MorralDeBici(largo = 0.3, tieneOjoDeGato = true) */
class MorralDeBici {

  const largo // cm
  const tieneOjoDeGato
  //const property peso = 1.2 // kg

  method peso() = 1.2
  method carga() = largo / 3 // kg
  method esLuminoso() = tieneOjoDeGato

}
