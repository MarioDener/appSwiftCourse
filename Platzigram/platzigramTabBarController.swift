//
//  platzigramTabBarController.swift
//  Platzigram
//
//  Created by Mario Sanchez on 27/4/17.
//  Copyright © 2017 codemario. All rights reserved.
//

import Foundation
import UIKit

class platzigramTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // numero de controladores conectados a mi tab
        print(self.viewControllers!.count)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        // codigo para agregar un nuevo item a nuestro tabBar
//            let newController = UIViewController()
//            newController.view.backgroundColor = UIColor.green
//            newController.title = "Nuevo"
        // agreagamos nuestro viewcontroller al tab
//            self.viewControllers?.append(newController)
//            self.viewControllers![1].title = "Home"
//            if (UserDefaults.standard.value(forKey: "userToken") == nil ) {
//                self.performSegue(withIdentifier: "register", sender: nil)
//            }
        // ./ if userdefaul
        
        
    }
    
    
}
