//
//  LocationViewController.swift
//  Cafe-NIBM
//
//  Created by Ishanka Withanage on 2021-03-06.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var btnallowlocation: UIButton!
    
    var locationManager: CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnallowlocation.layer.cornerRadius = 25.0
    
    }
    
    
    
    @IBAction func btnLocationPressed(_ sender: UIButton) {
        
    locationManager = CLLocationManager()
    locationManager?.delegate = self
    locationManager?.requestAlwaysAuthorization()
        
    performSegue(withIdentifier: "linktoHome", sender: self)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
            if status == .authorizedAlways {
                if CLLocationManager.isMonitoringAvailable(for: CLBeaconRegion.self) {
                    if CLLocationManager.isRangingAvailable() {
                       print("hggh")
                    }
                }
            }
    }
    
}


