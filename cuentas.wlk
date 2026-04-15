import casa.*
object cuentaCorriente{
    var fondoSaldo = 0
    method depositar(monto){
        fondoSaldo = fondoSaldo + monto
    }
    method extraer(monto){
        fondoSaldo = fondoSaldo - monto
    }
    method fondoSaldo(){
        return fondoSaldo
    }
}

object cuentaGasto{
    var fondoSaldo = 0
    const costoPorOperacion = 20

    method depositar(monto){
            self.validar(monto)
            fondoSaldo = fondoSaldo + monto - costoPorOperacion
    }
    method extraer(monto){
        fondoSaldo = fondoSaldo - monto
    }
    method validar(monto){
        if (monto  <= costoPorOperacion){
            self.error("No te dan los numeros che")

        }
    }
    method fondoSaldo(_fondoSaldo){
        fondoSaldo = _fondoSaldo
    }
    method fondoSaldo(){
        return fondoSaldo
    }
}
