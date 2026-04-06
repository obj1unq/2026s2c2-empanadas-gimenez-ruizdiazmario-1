object galvan {
  var sueldo = 15000

  method sueldo() = sueldo

  method cambiarSueldo(nuevo) {
    sueldo = nuevo
  }
}

object baigorria {
  var empanadasVendidas = 0
  var valorPorEmpanada = 15

  method registrarVenta(cantidad) {
    empanadasVendidas = empanadasVendidas + cantidad
  }

  method sueldo() {
    return empanadasVendidas * valorPorEmpanada
  }
}