import objetos.*
import personas.*

object bolichito {
  var objetoEnVidriera = remera
  var objetoEnMostrador = pelota
 
  method esBrillante() {
    return objetoEnMostrador.esBrillante() and objetoEnVidriera.esBrillante()
  }
  method esMonocromatico(){
    return objetoEnMostrador.color() == objetoEnVidriera.color()
  }
  method esEquilibrado(){
    return objetoEnMostrador.peso() > objetoEnVidriera.peso()
  }
  method objetoDeColor(unColor){
    return objetoEnVidriera.color() == unColor or
        objetoEnMostrador.color() == unColor
  }
  method sePuedeMejorar() {
    return !self.esEquilibrado() or self.esMonocromatico()
  }
  method puedeOfrecerAlgoQueLeGustaA(unaPersona){
    return unaPersona.leGusta(objetoEnMostrador) or
        unaPersona.leGusta(objetoEnVidriera)
  }
}