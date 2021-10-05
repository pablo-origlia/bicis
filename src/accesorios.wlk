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

