

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var eventos : [Evento] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 284
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaEvento = tableView.dequeueReusableCell(withIdentifier: "celdaEvento") as! CeldaEventoController
        
        celdaEvento.lblTitulo.text = eventos[indexPath.row].titulo
        celdaEvento.lblLugar.text = eventos[indexPath.row].lugar
        celdaEvento.lblFecha.text = eventos[indexPath.row].fecha
        celdaEvento.lblHora.text = eventos[indexPath.row].hora
        
        celdaEvento.imgEvento.image = UIImage(named: eventos[indexPath.row].imagen)
        
        celdaEvento.lblidioma.text = eventos[indexPath.row].idioma
        
        return celdaEvento
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Eventos"
        
        eventos.append(Evento (titulo: "Sonic la peli", fecha: "24/11/1998", hora: "6 20 pm", lugar: "Memepolis fea vista", imagen: "sanic", idioma: "ENG"))
        
        eventos.append(Evento (titulo: "Shrek 5", fecha: "24/11/1998", hora: "4 20 pm", lugar: "Memepolis Zendero", imagen: "shrek", idioma: "ESP"))
        
        eventos.append(Evento (titulo: "John Wick 4", fecha: "24/11/1998", hora: "5 05 pm", lugar: "Memepolis Zendero", imagen: "john wick", idioma: "ESP"))
        
        eventos.append(Evento (titulo: "Coco 2", fecha: "24/11/1998", hora: "7 00 pm", lugar: "CineMemes", imagen: "coco 2", idioma: "ENG"))
        
        eventos.append(Evento (titulo: "Despacito 2", fecha: "24/11/1998", hora: "12 00 pm", lugar: "En el cielo", imagen: "despacito", idioma: "ENG"))
    }

    

}

