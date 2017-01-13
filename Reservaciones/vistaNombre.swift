//
//  vistaNombre.swift
//  Reservaciones
//
//  Created by Netzer Rivera on 29/12/16.
//  Copyright © 2016 Netzer Rivera. All rights reserved.
//

import UIKit

class vistaNombre: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!

    
    var nomVar : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado = nomVar
        let sigVista = segue.destinationViewController as! VistaPickerFechas
        sigVista.nomTextbox = resultado
    }

    @IBAction func btnSiguiente(sender: AnyObject) {
        
        nomVar = txtNombre.text!
        
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
