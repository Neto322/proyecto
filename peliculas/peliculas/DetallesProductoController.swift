
import Foundation
import UIKit

class DetallesProductoController : UIViewController
{
    
    @IBOutlet weak var productimage: UIImageView!
    
    @IBOutlet weak var lblNoti: UILabel!
    
    @IBOutlet weak var lblCancelar: UILabel!
    
    var producto : Producto?
    
    override func viewDidLoad() {
        if producto != nil {
            lblNoti.text = producto?.noti
            
            lblCancelar.text = producto?.cancelar
            
            productimage.image = UIImage(named: producto!.productImage )
                       
                       self.title = producto?.productImage
        }
    }
    
}
