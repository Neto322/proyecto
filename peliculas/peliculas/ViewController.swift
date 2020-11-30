

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tvEventos: UITableView!
    
    var eventos : [Evento] = []
    
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesEventoController
        destino.evento = eventos[tvEventos.indexPathForSelectedRow!.row]
    }
    
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
        
        celdaEvento.viewContenedorEvento.layer.cornerRadius = 60
        
        return celdaEvento
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Peliculas"
        
        eventos.append(Evento (titulo: "Sonic la peli", fecha: "24/11/1998", hora: "6 20 pm", lugar: "Memepolis fea vista", imagen: "sanic", idioma: "ENG", pais: "EUA", duracion: "90 min", clasificacion: "A",trailer: "sonic2"))
        
        eventos.append(Evento (titulo: "Shrek 5", fecha: "24/11/1998", hora: "4 20 pm", lugar: "Memepolis Zendero", imagen: "shrek", idioma: "ESP",pais: "EUA", duracion: "80 min", clasificacion: "AA",trailer: "shrek5"))
        
        eventos.append(Evento (titulo: "John Wick 4", fecha: "24/11/1998", hora: "5 05 pm", lugar: "Memepolis Zendero", imagen: "john wick", idioma: "ESP", pais: "EUA", duracion: "95 min", clasificacion: "C",trailer: "wick"))
        
        eventos.append(Evento (titulo: "Coco 2", fecha: "24/11/1998", hora: "7 00 pm", lugar: "CineMemes", imagen: "coco 2", idioma: "ENG", pais: "EUA", duracion: "65 min", clasificacion: "AA",trailer: "coco2"))
        
        eventos.append(Evento (titulo: "Despacito 2", fecha: "24/11/1998", hora: "1 00 pm", lugar: "En el cielo", imagen: "despacito", idioma: "ENG",pais: "Colombia", duracion: "78 min", clasificacion: "B",trailer: "despacito2-1"))
        
        eventos.append(Evento (titulo: "Star Wars X", fecha: "24/11/1998", hora: "8 00 pm", lugar: "Memepolis Zendero", imagen: "StarWars2", idioma: "ENG", pais: "EUA", duracion: "89 min", clasificacion: "B15", trailer: "starwarsX"))
        
        eventos.append(Evento (titulo: "Harry Potter 8", fecha: "24/11/1998", hora: "3 00 pm", lugar: "Memepolis fea vista", imagen: "Harrypotter2", idioma: "ENG", pais: "Inglaterra", duracion: "97 min", clasificacion: "B15",trailer: "potter10"))
        
        eventos.append(Evento (titulo: "Ghostbusters 4", fecha: "24/11/1998", hora: "2 00 pm", lugar: "CineMemes", imagen: "Ghostbusters2", idioma: "ENG", pais: "EUA", duracion: "54 min", clasificacion: "B",trailer: "ghostbuster2"))
        
        eventos.append(Evento (titulo: "Django", fecha: "24/11/1998", hora: "6 00 pm", lugar: "CineMemes", imagen: "Django2", idioma: "ENG", pais: "EUA", duracion: "120 min", clasificacion: "C",trailer: "django-1"))
        
        eventos.append(Evento (titulo: "Avengers 5", fecha: "24/11/1998", hora: "9 00 pm", lugar: "Memepolis fea vista", imagen: "Avengers2", idioma: "ENG", pais: "EUA", duracion: "90 min", clasificacion: "A" ,trailer: "avengers5") )
        
        
        
        
        
    }

    

}

