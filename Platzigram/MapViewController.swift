//
//  MapViewController.swift
//  Platzigram
//
//  Created by Mario Sanchez on 29/4/17.
//  Copyright © 2017 codemario. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var centrarButton: UIButton!
    let locationManager = CLLocationManager()
    let coordinates = [(4.6948,-74808),(4.7313,-74.0660),(4.7016,-74.0974),(4.726123,-74.0360)]
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // delegado del mapa
        mapView.delegate = self
        // acceder al gps si tiene permiso
        locationManager.delegate = self
        
        if (CLLocationManager.authorizationStatus() == .notDetermined) {
            locationManager.requestWhenInUseAuthorization()
        }
        else if (CLLocationManager.authorizationStatus() == .authorizedWhenInUse) {
            mapView.showsUserLocation = true
            for (latitud,longitud) in coordinates {
                let newPin = PintView.init(coordinate: CLLocationCoordinate2D(latitude: latitud,longitude: longitud))
                newPin.setTitle(title: "Pin")
                mapView.addAnnotation(newPin)
            }
        }
        
        
    }
    
    
    @IBAction func centrarPressed(_ sender: UIButton) {
        mapView.centerCoordinate = mapView.userLocation.coordinate
        sender.isHidden = true
    }
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if (status == .authorizedWhenInUse) {
            mapView.showsUserLocation = true
        }
    }
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        let latitude  = mapView.centerCoordinate.latitude
        let longitude = mapView.centerCoordinate.longitude
        
        print("Latitud :\(latitude) Longitud :\(longitude)")
        
        if ((latitude != mapView.userLocation.coordinate.latitude) && (longitude != mapView.userLocation.coordinate.longitude)) {
            centrarButton.isHidden = false
        }
        
        
    }
    
}
