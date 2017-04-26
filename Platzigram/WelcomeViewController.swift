//
//  WelcomeViewController.swift
//  Platzigram
//
//  Created by Mario Sanchez on 26/4/17.
//  Copyright © 2017 codemario. All rights reserved.
//

import Foundation
import UIKit
class WelcomeViewController: UIViewController {
    
    var etiquetaBienvenida : UILabel?
    var imageBienvenida : UIImageView?
    var botonLogin : UIButton?
    var botonSignup : UIButton?
    
    // con overrida sobreescribe un metodo
    override func viewDidLoad() {
        super.viewDidLoad()
        etiquetaBienvenida = UILabel()
        etiquetaBienvenida?.text = "Bienvenido a PlatziGram"
        etiquetaBienvenida?.font = UIFont.systemFont(ofSize: 17)
        etiquetaBienvenida?.textColor = UIColor.orange
        etiquetaBienvenida?.sizeToFit()
        etiquetaBienvenida?.frame = CGRect(x: 0, y: 20, width: etiquetaBienvenida!.frame.size.width, height: etiquetaBienvenida!.frame.size.height)
        etiquetaBienvenida?.center = CGPoint(x: self.view.frame.size.width/2, y: etiquetaBienvenida!.center.y)
        // add etiqueta
        self.view.addSubview(etiquetaBienvenida!)
        
        
        botonSignup = UIButton(type: .custom)
        botonSignup?.setTitle("Signup", for: .normal)
        botonSignup?.setTitleColor(UIColor.red, for: .normal)
        botonSignup?.sizeToFit()
        botonSignup?.frame = CGRect(x: 20, y: self.view.frame.size.height - 15 - 20, width: self.view.frame.size.width - 40, height: 20)
        botonSignup?.addTarget(self, action: #selector(signupPressed(sender:)), for: .touchUpInside)
        self.view.addSubview(botonSignup!)
        
    }
    
    func signupPressed(sender: UIButton) {
        print("Presiono \(sender.title(for: .normal)!)")
    }
    
    
}
