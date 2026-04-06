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
  
  method deuda() = {
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

  method pagarSueldo(empleado) {
  fondo = fondo - empleado.sueldo()
  empleado.cobrar()
  }
}



