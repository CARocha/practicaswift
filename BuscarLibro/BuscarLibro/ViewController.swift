//
//  ViewController.swift
//  BuscarLibro
//
//  Created by crocha on 7/4/16.
//  Copyright © 2016 crocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cajaBuscar: UITextField!
    @IBOutlet weak var mostrarLibro: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BuscarLibro(sender: AnyObject) {
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys="
        let isbn = cajaBuscar.text
        let url = NSURL(string: urls+isbn!)
        let datos:NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data:datos!, encoding: NSUTF8StringEncoding)
        mostrarLibro.text = texto! as String
        print(texto)
    }

    @IBAction func LimpiarCajaBusqueda(sender: AnyObject) {
        cajaBuscar.text = ""
        mostrarLibro.text = ""
    }

}

