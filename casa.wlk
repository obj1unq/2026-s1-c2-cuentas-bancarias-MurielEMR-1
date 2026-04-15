import noviecitos.*
import cuentas.*
object casa{

    var cuentaBancaria = cuentaCorriente
    var gastoMes = 0
    method depositar(monto){
        cuentaBancaria.depositar(monto)
    }
    method extraccion(monto){
        cuentaBancaria.extraer(monto)
        gastoMes = gastoMes + monto
    }
    method cuentaBancaria(){
        return cuentaBancaria
    }
    method cuentaBancaria(_cuentaBancaria){
        cuentaBancaria = _cuentaBancaria
    }
    method cambioMes(){
        gastoMes = 0
    }
    method gastoMes(){
        return gastoMes
    }

}
