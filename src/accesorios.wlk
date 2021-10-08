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
  ¿Qué agregados o cambios deberían hacerse para agregar un nuevo tipo de accesorio? 
  P.ej. el porta-botellitas de agua, un canasto en la parte de atrás, luces para poner en las ruedas.
  Indicar qué hay que agregar, y qué hay que tocar. Relacionar con los conceptos de "contrato" y/o "polimorfismo".
  En dos frases, bien cortito.Incluir la respuesta en el archivo en el que se definen los accesorios.
*/

/*
 * Para poder agregar un nuevo tipo de accesorio dicho accesorio debería de cumplir el mismo contrato que
 * los previamente definidos, respetando el polimorfismo.
 * Así cuando se utilicen en el desarrollo de una aplicación, no surgirían problemas con los mensajes que puedan
 * recibir (peso, carga y esLuminoso), ni tampoco con los tipos de respuestas que esperarían los demás objetos
 * que interactúen con los accesorios (un número, otro número y un booleano, respectivamente).
 */