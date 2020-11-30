

import Foundation

class Producto {
    var producto : String
    var tituloproducto : String
    var descripcion : String
    var sabor : String
    var orden : String
    var precio : String
    var productImage : String
    var noti : String
    var cancelar : String
    
    
    init(producto: String, tituloproducto: String, descripcion: String, sabor: String, orden: String , precio: String, productimage: String,noti: String,cancelar: String ) {
        
        self.producto = producto
        self.tituloproducto = tituloproducto
        self.descripcion = descripcion
        self.sabor = sabor
        self.orden = orden
        self.precio = precio
        self.productImage = productimage
        self.noti = noti
        self.cancelar = cancelar
        
        
        
    }
}
