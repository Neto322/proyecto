
import Foundation

class Evento {
    var titulo : String
    var fecha : String
    var hora : String
    var lugar : String
    var imagen : String
    var idioma : String
    var pais : String
    var duracion : String
    var clasificacion : String
    var trailer : String
    
    
    init(titulo : String, fecha : String, hora: String, lugar: String, imagen: String , idioma: String, pais : String, duracion : String, clasificacion : String , trailer : String) {
        
        self.titulo = titulo
        self.fecha = fecha
        self.hora = hora
        self.lugar = lugar
        self.imagen = imagen
        self.idioma = idioma
        self.pais = pais
        self.duracion = duracion
        self.clasificacion = clasificacion
        self.trailer = trailer
        
    }
}
