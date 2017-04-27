//
//  ProfileViewController.swift
//  Platzigram
//
//  Created by Mario Sanchez on 27/4/17.
//  Copyright © 2017 codemario. All rights reserved.
//

import Foundation
import UIKit
class ProfeliViewController: UIViewController {
    
    @IBAction func presentarNuevaVista(_ sender: Any) {
        self.performSegue(withIdentifier: "nuevaVista", sender: nil)
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
