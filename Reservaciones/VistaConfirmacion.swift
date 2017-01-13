//
//  VistaConfirmacion.swift
//  Reservaciones
//
//  Created by Netzer Rivera on 30/12/16.
//  Copyright © 2016 Netzer Rivera. All rights reserved.
//

import UIKit

class VistaConfirmacion: UIViewController {

    @IBOutlet weak var lblConfirmacionDía: UILabel!
    @IBOutlet weak var lblConfirmacionMes: UILabel!
    @IBOutlet weak var lblConfirmacionHorario: UILabel!
    @IBOutlet weak var lblConfirmacionPersona: UILabel!
    @IBOutlet weak var lblConfirmacionNombre: UILabel!
    @IBOutlet weak var lblConfirmacionRegreso: UILabel!
    
    @IBOutlet weak var lblTituloFont: UILabel!
    @IBOutlet weak var lblNomFont: UILabel!
    
    @IBOutlet weak var lblConfFont: UILabel!
    @IBOutlet weak var lbldiaFont: UILabel!
    @IBOutlet weak var lblMesfont: UILabel!
    @IBOutlet weak var lblHoraFont: UILabel!
    @IBOutlet weak var lblPersonFont: UILabel!
    @IBOutlet weak var lblfelicidades: UILabel!
    
    @IBOutlet weak var r1: UILabel!
    @IBOutlet weak var r2: UILabel!
    @IBOutlet weak var r3: UILabel!
    @IBOutlet weak var r4: UILabel!
    @IBOutlet weak var r5: UILabel!
    @IBOutlet weak var r6: UILabel!
    
    
    
    var diaConfirma : String = ""
    var mesConfirma : String = ""
    var horarioConfirma : String = ""
    var personaConfirma : String = ""
    var nombreConfirma : String = ""
    var RegresoConfirma : String = ""
    
    override func viewWillAppear(animated: Bool) {
        
        lblConfirmacionDía.text = diaConfirma
        lblConfirmacionMes.text = mesConfirma
        lblConfirmacionHorario.text = horarioConfirma
        lblConfirmacionPersona.text = personaConfirma
        lblConfirmacionNombre.text = nombreConfirma
        lblConfirmacionRegreso.text = RegresoConfirma
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblTituloFont.font = UIFont(name: "Avenir", size: 22.0)
        lblNomFont.font = UIFont(name: "Avenir", size: 16.0)
        lblConfFont.font = UIFont(name: "Avenir", size: 16.0)
        lbldiaFont.font = UIFont(name: "Avenir", size: 16.0)
        lblMesfont.font = UIFont(name: "Avenir", size: 16.0)
        lblHoraFont.font = UIFont(name: "Avenir", size: 16.0)
        lblPersonFont.font = UIFont(name: "Avenir", size: 16.0)
        lblfelicidades.font = UIFont(name: "Avenir", size: 16.0)
        
        r1.font = UIFont(name: "Avenir", size: 16.0)
        r2.font = UIFont(name: "Avenir", size: 16.0)
        r3.font = UIFont(name: "Avenir", size: 16.0)
        r4.font = UIFont(name: "Avenir", size: 16.0)
        r5.font = UIFont(name: "Avenir", size: 16.0)
        r6.font = UIFont(name: "Avenir", size: 16.0)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
