// saber su nivel de peligrosidad
// Knight rider 500 _ 10
// bumblebee 800 _ 15 - 30 
// palet de ladrillos 2 c/u _ 2 
// arena variable _ 1
// bateria 300 loaded - 200 _ 100 loaded - 0
// contenedor portuario 100 de base + cosas que lleve dentro.
//  _ 0 vacio - suma de la peligrosidad de las cosas dentro.
// residuos radiactivos peso variable _ 200
// embalaje de seguridad el peso es igual al contenido dentro. _ la peligrosidad es la mitad de lo que envuelve.
object cosas {

}
object knightRider {
  method peso() = 500
  method peligrosidad() = 10

}

object bumblebee {
  var estaActivado = false
  var peligrosidad = 15
  method peligrosidad() = peligrosidad 
  method peso() = 800 
  method estaActivado() = estaActivado
  method cambiarEstado() {
    if (estaActivado){
        estaActivado = true
        peligrosidad = 30
    } else { 
        estaActivado = false}
        peligrosidad = 15
  }
}
object paletLadrillos {
  const pesoUnidad = 2
  method peso(cantidad) {
    return pesoUnidad * 2
  }
  method peligrosidad() = 2
}
object arena {
  method peso(cantidad) {
    return cantidad
  }
  method peligrosidad() = 1 
}

object bateria {
  var isLoaded = true
  var peso = 300
  var peligrosidad = 100

  method cambiarEstado() {
    if(isLoaded){
        isLoaded = false
        peligrosidad = 0
        peso = 200
    }else {
        isLoaded = true
        peligrosidad = 200
        peso = 0

    }
  }
  method peligrosidad() = peligrosidad
  method peso() = peso
}
object contenedorPortuario {
  var peso = 100
  var peligrosidad = 0
  method cargarObjeto(objeto) {
    peso += objeto.peso()
    peligrosidad += objeto.peligrosidad()
  }
  method peso() = peso
  method peligrosidad() = peligrosidad
}

object residuosRadiactivos {
  var peso = 0
  method peligrosidad() = 200
  method sumarPeso(cantidad) {
    peso += cantidad
  }
  method peso() = peso
}

object embalajeDeSeguridad {
  var peso = 0
  var peligrosidad = 0
  
  method envolverObjeto(objeto) {
    peso += objeto.peso()
    peligrosidad += objeto.peligrosidad()
  }
}