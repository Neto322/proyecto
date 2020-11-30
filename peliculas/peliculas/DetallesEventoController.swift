

import Foundation
import UIKit

class DetallesEventoController : UIViewController {
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblDuracion: UILabel!
    @IBOutlet weak var lblClasificacion: UILabel!
    @IBOutlet weak var lblHora: UILabel!
    
    @IBOutlet weak var imgTrailer: UIImageView!
    
    var evento : Evento?
    
    override func viewDidLoad() {
        if evento != nil {
            lblPais.text = evento?.pais
            lblDuracion.text = evento?.duracion
            lblClasificacion.text = evento?.clasificacion
            lblHora.text = evento?.hora
            
            imgTrailer.image = UIImage(named: evento!.trailer )
            
            self.title = evento?.titulo
        }
    }
}
