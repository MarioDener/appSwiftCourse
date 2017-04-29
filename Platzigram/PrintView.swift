//
//  PrintView.swift
//  Platzigram
//
//  Created by Mario Sanchez on 29/4/17.
//  Copyright © 2017 codemario. All rights reserved.
//

import Foundation

import MapKit

class PintView: NSObject,MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title : String?
    
    init(coordinate : CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
    
    func setTitle(title: String) {
        self.title = title
    }
    
}
