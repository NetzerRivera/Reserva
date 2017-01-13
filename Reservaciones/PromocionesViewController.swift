//
//  PromocionesViewController.swift
//  Reservaciones
//
//  Created by Netzer Rivera on 02/01/17.
//  Copyright © 2017 Netzer Rivera. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import MapKit
import CoreLocation

class PromocionesViewController: UIViewController, CLLocationManagerDelegate{

 
  //  @IBOutlet weak var Mapa: MKMapView!
  //  @IBOutlet weak var lbltituloPromociones: UILabel!
    @IBOutlet weak var lbltituloPromociones: UILabel!
    @IBOutlet weak var Mapa: MKMapView!
    
    let LocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbltituloPromociones.font = UIFont(name: "Avenir", size: 35.0)

        let latitude:CLLocationDegrees = 19.555917
        let longitud:CLLocationDegrees = -99.25810

        let latDelta:CLLocationDegrees = 0.01
        let lonDelta:CLLocationDegrees = 0.01

        let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)

        let Location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitud)

        let region:MKCoordinateRegion = MKCoordinateRegionMake(Location, span)

        Mapa.setRegion(region, animated: true)

        
        let etiqueta = MKPointAnnotation()
        etiqueta.coordinate = Location
        etiqueta.title = "Dulce Lay"
        etiqueta.subtitle = "Av. Centenario # 87"
        
        Mapa.addAnnotation(etiqueta)

/*
    


    let ref = FIRDatabase.database().reference()
        ref.observeEventType(FIRDataEventType.Value, withBlock: {(FIRDataSnapshot) in
          
            let mensaje = FIRDataSnapshot.value!["Nombre"] as! String
            
            self.lbltituloPromociones.text = mensaje
            })
   */

// pedir autorizacion
        
        LocationManager.delegate = self
        LocationManager.desiredAccuracy = kCLLocationAccuracyBest // presicion
        LocationManager.requestWhenInUseAuthorization()
        LocationManager.startUpdatingLocation()
    
    }
    /*
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       
       let userLocation = locations[0]

       let  latitude = userLocation.coordinate.latitude
       let  longitud = userLocation.coordinate.longitude

        
        let latDelta:CLLocationDegrees = 0.015
        let lonDelta:CLLocationDegrees = 0.015
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        let Location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitud)
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(Location, span)
        
        Mapa.setRegion(region, animated: true)
        
        
    }*/
    
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
