object farolito {

  method peso() = 0.5

  method carga() = 0

  method esLuminoso() = true

}

class Canasto {

  const volumen

  method peso() = volumen / 10 // kg

  method carga() = volumen * 2 // kg

  method esLuminoso() = false

}

class MorralDeBici {

  const largo // cm
  const tieneOjoDeGato

  method peso() = 1.2

  method carga() = largo / 3 // kg

  method esLuminoso() = tieneOjoDeGato

}

/*
  5. Una pregunta
  ¿Qué agregados o cambios deberían hacerse para agregar un nuevo tipo de accesorio? P.ej. el porta-botellitas de agua, un canasto en la parte de atrás, luces para poner en las ruedas.

  Indicar qué hay que agregar, y qué hay que tocar. Relacionar con los conceptos de "contrato" y/o "polimorfismo". En dos frases, bien cortito.

  Incluir la respuesta en el archivo en el que se definen los accesorios. Pónganlo como se indica abajo así lo toma como comentario y no afecta al programa.
*/

/*
 * Para poder agregar un nuevo tipo de accesorio dicho accesorio deberia 
 * cumplir con el polimorfismo con los demas accesorios para asi cuando se 
 * utilize en el desarrollo de la aplicacion no tendriamos problemas con los 
 * mensajes que pueda recibir (peso, carga y esLuminoso) ni tampoco con los 
 * tipos de respuestas que se esperarian de dichos mensajes: un numero, otro 
 * numero y un boolenao, respectivamente, los demas objetos que interactuen con 
 * los accesorios.
 */