object galvan {
  var sueldo = 15000
  var dinero = 0
  var deuda = 0

  method sueldo() {
    return sueldo
  }

  method sueldo(valor) { 
    sueldo = valor
  }

  method cambiarSueldo(nuevo) {
    sueldo = nuevo
  }

  method dinero() {
    return dinero
  }
  
  method deuda() {
    return deuda
  }

  method gastar(cuanto) {
    if (dinero >= cuanto) {
      dinero = dinero - cuanto
    } else {
      deuda = deuda + (cuanto - dinero)
      dinero = 0
    }
  }

  method cobrar() {
    if (sueldo >= deuda) {
      dinero = dinero + (sueldo - deuda)
      deuda = 0
    } else {
      deuda = deuda - sueldo
    }
  }
}

object baigorria {
  var empanadasVendidas = 0
  var valorPorEmpanada = 15
  var totalCobrado = 0

  method vender(cantidad) {
    empanadasVendidas = empanadasVendidas + cantidad
  }

  method sueldo() {
    return empanadasVendidas * valorPorEmpanada
  }

  method cobrar() {
    totalCobrado = totalCobrado + self.sueldo()
    empanadasVendidas = 0
  }

  method totalCobrado() {
    return totalCobrado
  } 
}

object gimenez {
  var fondo = 300000

  method fondo() {
    return fondo
  }

  method fondos(cantidad) {
    fondo = cantidad
  }
  method puedePagar(empleado) {
    return self.fondo() >= empleado.sueldo()
  }

  method validarFondos(empleado) {
    if (not(self.puedePagar(empleado))){
        self.error("No hay fondos suficientes para pagar"+ empleado.sueldo() + "a"+ empleado+".") 
    }
  }

  method pagarA(empleado) {
    fondo = self.fondo() - empleado.sueldo()
    empleado.cobrar()
  }
 
  method pagarSueldo(empleado) {
    self.validarFondos(empleado)
    self.pagarA(empleado)
    }
  }
