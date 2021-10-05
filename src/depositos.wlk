import bicis.*
import accesorios.*

class Deposito {
	const property coleccion=[]
	
	method agregarBici(unaBici){coleccion.add(unaBici)}
	method quitarBici(unaBici){coleccion.remove(unaBici)}
	
	method bicisMasRapidas() = coleccion.filter{c=>c.velocidadCrucero()>25}
	
	method marcaDeBicis() = coleccion.map({c=>c.marca()}).asSet()
	
	method esNocturno()= coleccion.all{c=>c.tieneLuz()}
	
	method tieneBiciParaLLevarCargaDe(unPeso)= coleccion.any{c=>c.carga()>unPeso}
	
	method marcaBiciMasRapida()= coleccion.max({c=>c.velocidadCrucero()}).marca()
	
	method cargaTotalBicisLargas() = coleccion.filter({c=>c.largo()>170}).sum{c=>c.carga()}
	
	method bicisSinAccesorios()= coleccion.count({c=>c.accesorios().size()==0})
	
	//method bicisCompanieras(unaBici){
	
	//}
	
}

/*Agregar al modelo los depósitos donde se guardan las bicis. Para cada depósito, se indica la colección de bicis que están ahí.

Agregar métodos para consultar, dado un depósito:

la colección de sus bicis rápidas. Una bici se considera rápida si su velocidad de crucero es mayor a 25.
la colección formada por la marca de cada una de las bicis, sin repetidos.
si el depósito es nocturno o no. La condición es que todas sus bicis tengan luz.
si tiene bicicleta para llevar una carga expresada en kg. 
* La condición es que para al menos una de las bicis del depósito, la carga que puede llevar sea mayor a los kilos que se piden.

Por ejemplo, para un depósito que tiene las tres bicis descriptas en el punto anterior, tenemos:

las bicis rápidas son las dos primeras (la rodado 28 y la rodado 26).
las marcas son "Olmo" y "Legnano".
el depósito no es nocturno (por la tercera bici).
sí tiene bici para llevar 10 kilos, no tiene bici para llevar 50 kilos.
Un depósito que tenga solamente las dos primeras bicis, sí es nocturno.

3. Más sobre el depósito
Agregar métodos para poder consultar, dado un depósito

la marca de la bici más rápida.
la carga total de las bicis largas, que se calcula como la suma de la carga que pueden llevar las bicis cuyo largo es de más de 170 cm.
la cantidad de bicis sin accesorios que hay en el depósito.
4. Bicis compañeras
Se dice que dos bicis son compañeras si: son de la misma marca, y además sus largos no difieren en más de 10 cm. Atención, una bici no es compañera de sí misma.
Se pide agregar lo necesario para poder consultar, dado un depósito, cuáles de sus bicis son compañeras de una bici que se pasa por parámetro.

*/