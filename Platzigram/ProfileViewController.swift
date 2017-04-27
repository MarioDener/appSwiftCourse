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
    @IBOutlet weak var scrollView: UIScrollView!

    
    @IBAction func presentarNuevaVista(_ sender: Any) {
        self.performSegue(withIdentifier: "nuevaVista", sender: nil)
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...5 {
            let newView = UIView()
            newView.frame = CGRect(x: CGFloat(i) * self.view.frame.size.width, y: 0, width: scrollView.frame.size.width, height: self.view.frame.size.height)
            
            newView.backgroundColor = UIColor(red: CGFloat(arc4random_uniform(255))/255.0, green: CGFloat(arc4random_uniform(255))/255.0, blue: CGFloat(arc4random_uniform(255))/255.0, alpha: 1.0)
            
            scrollView.addSubview(newView)
        }
        // agregamos el contenedor del scrollView
        scrollView.contentSize = CGSize(width: self.view.frame.size.width * 5, height: self.scrollView.frame.size.height)
        scrollView.showsHorizontalScrollIndicator = false
    }
    
    @IBAction func movimientoPresionado(_ sender: UIButton) {
        // punto con respecto a la pantalla
        let currentX = self.scrollView.contentOffset.x
        let vistaActual = Int(currentX / scrollView.frame.size.width)
        var nuevaVista = 0
        if  (sender.title(for: .normal)! == "Atras"){
            nuevaVista = vistaActual - 1;
            
        } else {
            nuevaVista = vistaActual + 1
        }
        // para tomar en cuenta que no se salga del content del scrollview
        if(nuevaVista<0 || nuevaVista > 5){
            return
        }
        
        let newX = CGFloat(nuevaVista) * self.scrollView.frame.size.width
        scrollView.contentOffset = CGPoint(x: newX, y: scrollView.contentOffset.y)
    }
 
}
