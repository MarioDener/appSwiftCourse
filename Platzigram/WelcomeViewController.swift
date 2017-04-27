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
        botonSignup?.addTarget(self, action: #selector(apretoBoton(sender:)), for: .touchUpInside)
        self.view.addSubview(botonSignup!)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if etiquetaBienvenida == nil{
            etiquetaBienvenida = UILabel()
            etiquetaBienvenida?.text = "Bienvenido a platzigram"
            etiquetaBienvenida?.font = UIFont.systemFont(ofSize: 17)
            etiquetaBienvenida?.textColor = UIColor.orange
            etiquetaBienvenida?.sizeToFit()
            etiquetaBienvenida?.frame = CGRect(x: 0, y: 20, width: etiquetaBienvenida!.frame.size.width, height: etiquetaBienvenida!.frame.size.height)
            etiquetaBienvenida?.center = CGPoint(x: self.view.frame.size.width / 2, y: etiquetaBienvenida!.center.y)
            
            self.view.addSubview(etiquetaBienvenida!)
        }
        
        if botonSignup == nil {
            botonSignup = UIButton(type: .custom)
            botonSignup?.setTitle("Signup", for: .normal)
            botonSignup?.setTitleColor(UIColor.red, for: .normal)
            botonSignup?.sizeToFit()
            botonSignup?.addTarget(self, action: #selector(apretoBoton(sender:)), for: .touchUpInside)
            botonSignup?.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(botonSignup!)
            
            self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[botonSignup]-20-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: ["botonSignup":botonSignup!]))
            self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[botonSignup]-space-|", options: NSLayoutFormatOptions(rawValue:0), metrics: ["space":20], views: ["botonSignup":botonSignup!]))
            self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[botonSignup(==40)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: ["botonSignup":botonSignup!]))
        }
        
        if botonLogin == nil {
            botonLogin = UIButton(type: .custom)
            botonLogin?.setTitle("Login", for: .normal)
            botonLogin?.setTitleColor(UIColor.blue, for: .normal)
            botonLogin?.sizeToFit()
            botonLogin?.frame = CGRect(x: 20, y: botonSignup!.frame.origin.y - 20 - 20, width: self.view.frame.size.width - 40, height: 20)
            botonLogin?.addTarget(self, action: #selector(apretoBoton(sender:)), for: .touchUpInside)
            self.view.addSubview(botonLogin!)
            
        }
        
        if imageBienvenida == nil {
            imageBienvenida = UIImageView(image: UIImage(named: "PlatziLogo"))
            imageBienvenida?.frame = CGRect(x: 20, y: imageBienvenida!.frame.maxY + 40, width: self.view.frame.size.width - 40, height: 80)
            imageBienvenida?.contentMode = .scaleAspectFit
            self.view.addSubview(imageBienvenida!)
        }
    }
    
    
    func apretoBoton(sender: UIButton) {
        print("Presiono \(sender.title(for: .normal)!)")
        /*
        let alerta = UIAlertController(title: "Sin cuenta", message: "Por el momento no tienes una cuenta", preferredStyle: .actionSheet)
        let crearCuenta = UIAlertAction(title: "Crear cueta", style: .default, handler: {
            actionCrearCuenta in
            print("Craer Cuenta")
        })
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: {
            actionCancelar in
            print("Presionaste Cancelar")
        })
        
        alerta.addAction(cancelar)
        alerta.addAction(crearCuenta)
        
        // como presentare mi alert
        self.present(alerta,animated: true,completion: nil)
        */
        
        if sender.isEqual(botonSignup!) {
            self.performSegue(withIdentifier: "signup", sender: nil)
        }

    }
    
    
}
