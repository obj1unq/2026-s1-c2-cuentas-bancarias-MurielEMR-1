import noviecitos.*
import cuentas.*
object casa{

    var cuentaBancaria = cuentaCorriente
    var gastoMes = 0
    var cantidadDeViveres = 30 //porcentaje de lo que se gasta en viveres
    var property gastoReparaciones = 0 //plata normal

    method comprarViveres(porcentaje,calidad){
        self.verificarViveres(porcentaje)
        self.extraccion(porcentaje*calidad)
        self.cantidadDeViveres(porcentaje*calidad)
        
    }

    method verificarViveres(porcentaje){
        if (cantidadDeViveres + porcentaje >100){
            self.error("Cuanto mas te queres abastecer? Gordo")
        }
    }
    method tieneViveresSuficientes(){
        return cantidadDeViveres >=40
    }
    method hayQueHacerReparaciones(){
        return gastoReparaciones > 0
    }
    method laCasaEstaEnOrden(){
        return not self.tieneViveresSuficientes() && not self.hayQueHacerReparaciones()
    }
    method hacerReparaciones(){
        self.extraccion(gastoReparaciones)
        gastoReparaciones = 0
    }
    method cantidadDeViveres(){
        return cantidadDeViveres
    }
    method cantidadDeViveres(_cantidadDeViveres){
        cantidadDeViveres = _cantidadDeViveres
    }
    /*
    method gastoReparaciones(_gastoReparaciones){
        gastoReparaciones = _gastoReparaciones
    }
    method gastoReparaciones(){
        return gastoReparaciones
    }
    
    */
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
