//
//  VistaPickerFechas.swift
//  Reservaciones
//
//  Created by Netzer Rivera on 29/12/16.
//  Copyright © 2016 Netzer Rivera. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class VistaPickerFechas: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

   
    @IBOutlet weak var lblTituloReservaciones: UILabel!
    @IBOutlet weak var txtNombreTXT: UITextField!
    @IBOutlet weak var txtContactoTXT: UITextField!
    @IBOutlet weak var lblNombreFont: UILabel!
    @IBOutlet weak var lblWhatsFont: UILabel!
    @IBOutlet weak var lblDiaFont: UILabel!
 
    
    var contTextbox : String = ""
    var nomTextbox : String = ""
    var dia : String = ""
    var mes :  String = ""
    var horario : String = ""
    var personas : String = ""
    
    var Array =
    [["•","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31",],["•","Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"],["•","8:00","8:15","8:30","8:45","9:00","9:15","9:30","9:45","10:00","10:15","10:30","10:45","11:00","11:15","11:30","11:45","12:00","12:15","12:30","12:45","13:00","13:15","13:30","13:45","14:00","14:15","14:30","14:45","15:00","15:15","15:30","15:45","16:00","16:15","16:30","16:45","17:00","17:15","17:30","17:45","18:00","18:15","18:30","18:45","19:00","19:15","19:30","20:45","21:00","21:15","21:30"],["•","1","2","3","4","5","6","7","8","10"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Do any additional setup after loading the view.
 
        lblTituloReservaciones.font = UIFont(name: "Avenir", size: 22.0)
        lblNombreFont.font = UIFont(name: "Avenir", size: 16.0)
        lblWhatsFont.font = UIFont(name: "Avenir", size: 16.0)
        lblDiaFont.font = UIFont(name: "Avenir", size: 16.0)
    
        
        
        txtNombreTXT.delegate = self
        txtContactoTXT.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return Array.count
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array[component].count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[component][row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch(component){
        case 0:
            dia = Array[component][row]
            break;
        case 1:
            mes = Array[component][row]
            break;
        case 2:
            horario = Array[component][row]
            break;
        case 3:
            personas = Array[component][row]
            break;
        default:
            break;
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        
        let resultadoDia = dia
        let sigVistaCdia = segue.destinationViewController as! VistaConfirmacion
        sigVistaCdia.diaConfirma = resultadoDia
        
        let resultadoMes = mes
        let sigVistaCMes = segue.destinationViewController as! VistaConfirmacion
        sigVistaCMes.mesConfirma = resultadoMes
        
        let resultadoHorario = horario
        let sigVistaCHorario = segue.destinationViewController as! VistaConfirmacion
        sigVistaCHorario.horarioConfirma = resultadoHorario
        
        let resultadoPersona = personas
        let sigVistaCPersona = segue.destinationViewController as! VistaConfirmacion
        sigVistaCPersona.personaConfirma = resultadoPersona
        
        let resultadoNombre = nomTextbox
        let sigVistaCNombre = segue.destinationViewController as! VistaConfirmacion
        sigVistaCNombre.nombreConfirma = resultadoNombre
        
        let resultadoContRegreso = contTextbox
        let sigVistaCContRegreso = segue.destinationViewController as! VistaConfirmacion
        sigVistaCContRegreso.RegresoConfirma = resultadoContRegreso
    }
    
    
    @IBAction func btnSiguienteFirebase(sender: AnyObject) {
        
        nomTextbox = self.txtNombreTXT.text!
        contTextbox = self.txtContactoTXT.text!
        
        let ref = FIRDatabase.database().reference()

        ref.child("Clientes").setValue(["Día": dia,
                                        "Mes": mes,
                                        "Horario": horario,
                                        "Personas": personas,
                                        "Nombre": nomTextbox,
                                        "Whats": contTextbox])
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
      txtNombreTXT.resignFirstResponder()
      txtContactoTXT.resignFirstResponder()
        
      return true
    }
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        self.view.endEditing(true)
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
