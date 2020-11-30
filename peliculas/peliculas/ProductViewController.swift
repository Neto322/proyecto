import UIKit

class ProductViewController: UITableViewController {
    
    var Productos : [Producto] = []
    
    @IBOutlet var tvEventos: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesProductoController
        
        destino.producto = Productos[tvEventos.indexPathForSelectedRow!.row]
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 284
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Productos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaProducto = tableView.dequeueReusableCell(withIdentifier: "celdaProducto") as! CeldaProductoController
        
        celdaProducto.imgProducto.image = UIImage(named: Productos[indexPath.row].producto)
        
        celdaProducto.lblProductotitulo.text = Productos[indexPath.row].tituloproducto
        
        celdaProducto.lblDescripcion.text = Productos[indexPath.row].descripcion
        
        celdaProducto.lblSabor.text = Productos [indexPath.row].sabor
        
        celdaProducto.lblPrecio.text = Productos [indexPath.row].precio
        
        celdaProducto.lblOrdenar.text = Productos [indexPath.row].orden
        
        celdaProducto.contenedor.layer.cornerRadius = 60
        
        return celdaProducto
        
           
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Productos.append(Producto(producto: "1", tituloproducto: "Palomitas", descripcion: "A que sabe el cine?", sabor: "Mantequilla,Natural,Dulces,Picantes", orden: "Ordenar Palomitas", precio: "30$",productimage: "1A",noti: "Gracias por pedir Palomitas!!",cancelar: "Cancelar palomitas >:("))
        
        Productos.append(Producto(producto: "2", tituloproducto: "Refresco", descripcion: "Exilir de los dioses en recipiente de cartoon/plastico", sabor: "Coca cola, pepsi", orden: "Ordenar Refresco", precio: "12$",productimage: "2A",noti: "Gracias por pedir Refresco!!",cancelar: "Cancelar refresco >:("))
        
        Productos.append(Producto(producto: "3", tituloproducto: "Hot Dog", descripcion: "Perrito caliente en forma de bocadillo para su deleite ", sabor: "Natural, tocino, guacamole", orden: "Ordenar Hotdog", precio: "50$",productimage: "3A",noti: "Gracias por pedir Hot dog!!",cancelar: "Cancelar Hot dog >:("))
        
        Productos.append(Producto(producto: "4", tituloproducto: "Hambuerguesa", descripcion: "Sandwich hecho a base de carne molida ", sabor: "Clasica, Queso,Guacamole", orden: "Ordenar Hamburguesa", precio: "50$",productimage: "4A",noti: "Gracias por pedir Hamburguesa!!",cancelar: "Cancelar hamburguesa >:("))
        
        Productos.append(Producto(producto: "5", tituloproducto: "Subway", descripcion: "Le dicen submarino porque la forma parece un submarino", sabor: "Jamon,Carne,Pollo", orden: "Ordenar Subway", precio: "40$",productimage: "5A",noti: "Gracias por pedir Subway!!",cancelar: "Cancelar subway >:("))
        
        
        Productos.append(Producto(producto: "6", tituloproducto: "Slushie", descripcion: "Gloria congelada", sabor: "Fresa,Berries,Sandia", orden: "Ordenar Slushie", precio: "20$",productimage: "6A",noti: "Gracias por pedir Slushie!!",cancelar: "Cancelar Slushie >:("))
        
        Productos.append(Producto(producto: "7", tituloproducto: "Nachos", descripcion: "trozos de tortilla de maíz cubiertos con un queso", sabor: "Sencillas,Verdura,Carne", orden: "Ordenar Nachos", precio: "40$",productimage: "7A",noti: "Gracias por pedir Nachos!!",cancelar: "Cancelar nachos >:("))
        
        Productos.append(Producto(producto: "8", tituloproducto: "Dulces", descripcion: "Alimento solido a base de azucares y colorantes", sabor: "Fresa,Kiwi,Cajeta", orden: "Ordenar Dulces", precio: "15$",productimage: "8A",noti: "Gracias por pedir Dulces!!",cancelar: "Cancelar dulces >:("))
        
        Productos.append(Producto(producto: "9", tituloproducto: "Cafe", descripcion: "consumido en gran medida no solo por su sabor, sino por sus efectos", sabor: "Capuchino,Latte,Expresso", orden: "Ordenar Cafe", precio: "25$",productimage: "9A",noti: "Gracias por pedir Cafe!!",cancelar: "Cancelar cafe >:("))
        
        Productos.append(Producto(producto: "10", tituloproducto: "Nieve", descripcion: "se denomina nieve a un tipo de helado de sabores frutales, a base de agua.", sabor: "Vainilla,Chocolate", orden: "Ordenar Nieve", precio: "25$",productimage: "10A",noti: "Gracias por pedir Nieve!!",cancelar: "Cancelar nieve >:("))
        
       
        
    }
    

 

}

