import casa.*
object cuentaCorriente{
    var fondoSaldo = 2000
    method depositar(monto){
        fondoSaldo = fondoSaldo + monto
    }
    method extraer(monto){
        fondoSaldo = fondoSaldo - monto
    }
    method fondoSaldo(){
        return fondoSaldo
    }
    method fondoSaldo(_fondoSaldo){
        fondoSaldo = _fondoSaldo
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

object cuentaCombinada{
    var cuentaPrimaria = cuentaGasto
    var cuentaSecundaria = cuentaCorriente

    
    method depositar(monto){
        cuentaPrimaria.depositar(monto)
    }
    method extraer (monto){
        self.verificarFondos(monto)
        if (cuentaPrimaria.fondoSaldo() < monto){
            cuentaSecundaria.extraer(monto-cuentaPrimaria.fondoSaldo())
            cuentaPrimaria.extraer((cuentaPrimaria.fondoSaldo()))
        }else {
            cuentaPrimaria.fondoSaldo(cuentaPrimaria.fondoSaldo() - monto)
        }
    }
    method verificarFondos(monto){
        if (cuentaPrimaria.fondoSaldo().max(0) + cuentaSecundaria.fondoSaldo().max(0) < monto){
            self.error("Te lo digo explico con fichitas? Claramente no alcanza")
        }

    }
    method cuentaPrimaria(_cuentaPrimaria){
        cuentaPrimaria=_cuentaPrimaria
    }
    method cuentaSecundaria(_cuentaSecundaria){
        cuentaSecundaria= _cuentaSecundaria
    }
    method cuentaPrimaria(){
        return cuentaPrimaria
    }
    method cuentaSecundaria(){
        return cuentaSecundaria
    }
    method fondoSaldo(){
        return cuentaPrimaria.fondoSaldo().max(0) + cuentaSecundaria.fondoSaldo().max(0)
    }

}

object cuentaAlfa{}

object cuentaBeta{}