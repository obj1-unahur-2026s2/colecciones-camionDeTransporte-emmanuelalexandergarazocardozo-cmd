import cosas.*



//qué cosas debe llevar el camion
// Saber su capacidad
// cargar y descargar cosas de en una en una
// saber el peso total del camion incluyendo su tara de 1000kg
// saber si la carga del camion es par
// poder consultar si un articulo de la carga pesa X kg.
// Saber cual es la primera carga de la lista que es de X peligrosidad en adelante.
// saber cantidadDeCosasPeligrosasDesdeNivel X 
// saber dar una lista de cosas que superan la peligrosidad de X cosa.
// Conocer si el camion supera el limite de peso de 25K kg.
// saber si puede circular en ruta que es menor peso del maximo
// y no superar el nivel maximo 
// de peligrosidad dado para la ruta que se pasa como argumento
// saber si el camion tiene un articulo que pesa entre X e Y.
// saber el artiulo mas pesado de la carga.
object camion {
    var peso = 1000
    var peligrosidad = 0
    const objetosCargados = []
    method cargarObjeto(objeto) {
      objetosCargados.add(objeto)
      peso += objeto.peso()
      peligrosidad += objeto.peligrosidad()
    }
    method descargarObjeto(objeto) {
      objetosCargados.del(objeto)
      peso -= objeto.peso()
      peligrosidad -= objeto.peligrosidad()
    }
    method pesoTotal() {
      return peso
    }
    
    method laCargaEsPar() = (peso % 2 == 0)

}