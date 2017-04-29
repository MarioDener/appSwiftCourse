//
//  PlatzigramImageController.swift
//  Platzigram
//
//  Created by Mario Sanchez on 29/4/17.
//  Copyright © 2017 codemario. All rights reserved.
//

import Foundation
import UIKit

class platzigramImageControlle: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var imagePreview: UIImageView!
    
    @IBAction func abrirCamara(_ sender: UIButton) {
        let camera = UIImagePickerController()
        camera.sourceType = .camera
        camera.allowsEditing = true
        camera.delegate = self
        self.present(camera, animated: true, completion: nil)
    }
    
    @IBAction func abrirFotos(_ sender: Any) {
        let libraryPicker = UIImagePickerController()
        libraryPicker.sourceType = .photoLibrary
        libraryPicker.allowsEditing = true
        libraryPicker.delegate = self
        self.present(libraryPicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        imagePreview.image = info[UIImagePickerControllerEditedImage] as? UIImage
        
        picker.dismiss(animated: true, completion: nil)
    }
}
